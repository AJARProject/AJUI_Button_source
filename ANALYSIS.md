# Analyse d'AJUI Button (migration 4D 21 R4)

Composant 4D d'AJAR SA. Dépôt `AJARProject/AJUI_Button_source`. Licence MIT, fichier `LICENSE`. Version après migration : **2.2.0** (4D 21 R4) ; `AJUI_Btn_info` renvoie `AJUI_Button (v21 R4) : 2.2.0`. Avant la migration, `AJUI_Btn_info` renvoyait `AJUI Button(Builded on v19 R4): 2.1.0+Build188` (11 février 2022) ; base de la migration : commit 897d9e8 « Allow to set the picture directly with a picture instead of a path ». Tags existants : `1.3.1`, `1.5.0`, `2.0.0-beta1`, `2.1.0`. Le numéro 2.2.0 évite `2.1.1`, déjà utilisé par l'ancien dépôt `AJARProject/AJUI_Button`.

Réalisé avec Cursor / Grok Bot (Codesky) pour Maurice Inzirillo.

## Ce que fait le composant

AJUI Button dessine un bouton en SVG (composant 4D SVG) dans un objet image du formulaire hôte, et gère ses états (`default`, `hover`, `active`, `disable`, `focus`) d'après les événements du formulaire. Il propose des boutons rectangulaires ou ronds, avec texte, image ou composition texte + image, des boutons d'action flottants (FAB) dont l'animation tourne dans un worker (`CALL WORKER` + `CALL FORM`), des modèles JSON (import, export, `AJUI_Btn_LoadTemplates`) et des callbacks de clic et de double-clic (nom de méthode ou formule).

L'hôte crée une instance avec la classe `cs.AJUI.Button` (renvoyée par `AJUI_Button` ; `component_classStore_name` = `AJUI`), ou avec `New AJUI_Button`, objet dont les membres sont des `Formula` vers les méthodes `AJUI_Btn_GetSet*` (sans paramètre = lecture, avec paramètre = écriture, selon `Count parameters`). Les fonctions de la classe appellent les mêmes méthodes.

## Structure

| Emplacement | Rôle |
| --- | --- |
| `Project/AJUI_Button.4DProject` | Projet du composant. Avant migration : seulement le commentaire 4D. Maintenant `compatibilityVersion` 2140 et `tokenizedText` false. |
| `Project/Sources/Methods` | 77 méthodes projet, dont `zz_test` (essai manuel). |
| `Project/Sources/Classes/Button.4dm` | Classe `Button` : constructeur et 56 fonctions (getters/setters, FAB, `draw`, `show`, `hide`, `enable`, `export`…). |
| `Project/Sources/settings.4DSettings` | Réglages du projet, dont `component_classStore_name="AJUI"`. Inchangé. |
| `Project/Sources/dependencies.json` | **Nouveau.** Déclare 4D SVG (`github: 4d/4D-SVG`). |
| `Settings/buildApp.4DSettings` | **Nouveau.** Construction du composant (`BuildComponent` True, nom `AJUI_Button`). Le `.gitignore` excluait `/Settings/*` et `*.4DSettings` ; ces lignes sont retirées. |
| `Resources/AJUI_btn_Constants.xlf` | Constantes d'état `AJUI_btn_default`, `AJUI_btn_hover`, `AJUI_btn_active`, `AJUI_btn_disable`, `AJUI_btn_focus`. |
| `Documentation/Methods` | Fiches markdown des 4 méthodes partagées. |
| `extended round button/` | Maquettes (`.graffle`, `.svg`, `.pdf`), sans rôle dans le code. |

Pas de formulaire dans ce dépôt : le formulaire de test est dans AJUI_ButtonLab (voir les étapes suivantes).

## API partagée

Méthodes `"shared":true` : `New AJUI_Button`, `AJUI_Button` (renvoie `cs.Button`), `AJUI_Btn_info`, `AJUI_Btn_LoadTemplates`. Les noms, attributs (`shared`, `invisible`), la classe `Button`, le class store `AJUI`, les membres de l'objet `New AJUI_Button` (API à formules `GetSet*`) et les comportements sont inchangés.

## Dépendances

- **4D SVG** : `SVG_New`, `SVG_New_rect`, `SVG_New_ellipse_bounded`, `SVG_New_textArea`, `SVG_Define_linear_gradient`, `SVG_SET_FONT_STYLE`, `SVG_Export_to_picture`, `SVG_CLEAR`. En 4D 21 R4, sans déclaration dans `dependencies.json`, ces appels ne compilent pas (4D demande aussi d'importer « les composants anciennement inclus »).
- **Plugins** : aucun.
- Pas de tables.

## Migration 4D 21 R4

Avec l'ancien fichier projet et 4D SVG déclaré, la compilation passait avec 0 erreur et 386 avertissements (directives `C_*` obsolètes, `$0`/`$1` hors prototype). Avec `compatibilityVersion` 2140 sans autre changement : 1 688 erreurs et 188 avertissements.

Ce qui a été fait (même méthode qu'AJUI_Tip 1.8.0 et AJUI_Banner 1.9.0) :

1. **Jetons retirés.** Les suffixes `:C` (commandes) et `:K` (constantes) ont été retirés du code (pas des chaînes ni des commentaires). Un seul nom avait changé depuis l'écriture du code : la commande 468 était enregistrée comme `GET MOUSE:C468` ; son nom actuel est [`MOUSE POSITION`](https://developer.4d.com/docs/21-R4/commands/mouse-position) (même numéro, mêmes paramètres). Les trois appels de `AJUI_Btn_draw` utilisent ce nom. Tous les autres noms de commandes ont été comparés au numéro de leur jeton.
2. **`var`.** Les directives `C_TEXT`, `C_LONGINT`, `C_REAL`, `C_OBJECT`, `C_BOOLEAN`, `C_COLLECTION`, `C_PICTURE`, `C_BLOB`, `C_TIME`, `C_VARIANT` ([Variables](https://developer.4d.com/docs/21-R4/Concepts/variables)) sont remplacées par `var`. Les locales non déclarées sont typées avec **le type que le compilateur leur donnait déjà** (symboles du compilateur, option `generateSymbols` de `Compile project`). Quelques locales restent donc `Variant` (par exemple dans `AJUI_Btn_drawSVG`) ou `Real` : c'est le type qu'elles avaient déjà en compilé.
3. **`#DECLARE`.** Dans les méthodes, `$1`, `$2`… deviennent `$param1`, `$param2`… et `$0` devient `$result`, déclarés par `#DECLARE(...) -> $result : Type` ([Paramètres](https://developer.4d.com/docs/21-R4/Concepts/parameters)). Un paramètre déclaré mais non utilisé reste déclaré (par exemple `$param2` de `AJUI_Btn_addFab`), pour que les appels à deux paramètres restent acceptés. `Count parameters` compte toujours les paramètres réellement passés : les getters/setters gardent leur comportement.
4. **Classe `Button`.** Paramètres déclarés dans les prototypes (`Function label($param1 : Text; $param2 : Text) -> $result : Text`, `Function onClick($param1 : Variant; $param2 : Object) -> $result : Variant`, etc.). La fonction `picture`, déjà écrite avec un prototype moderne (commit 897d9e8), est conservée telle quelle. Propriétés déclarées ([Classes](https://developer.4d.com/docs/21-R4/Concepts/classes)) : `property btn : Object` et `property templateName; templatePath : Text`. Une propriété déclarée n'est créée qu'à l'affectation : le constructeur et `AJUI_Btn_initAttributes` les créent comme avant.
5. **Version.** `AJUI_Btn_info` : `"2.2.0"  // 22 Nov 2026 (4D 21 R4)`, retour `AJUI_Button (v21 R4) : 2.2.0`. La fiche `Documentation/Methods/AJUI_Btn_info.md` est mise à jour.
6. **Construction.** `Settings/buildApp.4DSettings` ajouté (même modèle qu'AJUI_Tip). `AJUI_BuildComponent` cherchait `+Build` et `GMT` + CR dans `AJUI_Btn_info` pour incrémenter le numéro de build ; avec le nouveau format il aurait réécrit la méthode de travers. L'incrément n'est plus fait que si l'ancien format est présent ; `BUILD APPLICATION` reste appelé sur `Settings/buildApp.4DSettings`.
7. **`.gitignore`.** `/Settings/*` et `*.4DSettings` retirés, et `!/Settings/buildApp.4DSettings` ajouté après `*BuildApp*` (que macOS applique sans tenir compte de la casse) ; ajout de `/Resources/en.lproj/` (créé par 4D à l'ouverture) et de `/Components/AJUI_Button.4dbase/` (composant construit).

## Vérifications (Mac mini, 4D 21 R4 build 21R4.100185)

Sur un export `git archive` de la branche :

- `Compile project` (cibles `x86_64_generic` et `arm64_macOS_lib`) : **succès, 0 erreur, 0 avertissement**.
- `BUILD APPLICATION` : OK=1, `AJUI_Button.4dbase` avec `AJUI_Button.4DZ` et `Libraries/lib4d-arm64.dylib`, signature ad hoc, `codesign -v` valide.
- Test sans interface : `AJUI_Btn_info` = `AJUI_Button (v21 R4) : 2.2.0` ; `New AJUI_Button` crée l'instance, `Name`, `Label`, `FontSize` et `Width` fonctionnent en écriture et en lecture, `Type` renvoie la valeur par défaut `rectangle` ; `AJUI_Button.new()` crée une instance `cs.Button` initialisée, `name`, `label`, `fontSize` et `FAB_add` (deux paramètres) fonctionnent.
- Projet hôte de test (composant compilé placé dans `Components`, 4D SVG déclaré chez l'hôte) : composants chargés `AJUI_Button` et `4D SVG`, mêmes résultats.

## Risques et points non testés

1. **Affichage non testé.** Le test tourne sans interface (`--headless`) : `draw`, les états au survol et au clic, les FAB et leur animation, les callbacks, l'import et l'export de modèles n'ont pas été exécutés. La compilation garantit les types et les appels, pas le rendu. AJUI_ButtonLab servira à ces tests.
2. **Release GitHub non testée** : le chargement par le gestionnaire de dépendances depuis une release sera vérifié avec la release 2.2.0.

Défauts relevés, déjà présents avant la migration et **non corrigés** ici (comportement conservé) :

3. **`failImport` du constructeur.** Comme dans AJUI_Tip avant la 1.8.1, `Class constructor` teste `This.btn.failImport`, qui n'est jamais renseigné, alors que le résultat de l'import est dans `$template_obj.failImport`. Un modèle introuvable n'est donc pas détecté par la classe (`New AJUI_Button` le détecte bien).
4. **`AJUI_Btn_addFab`** ignore le paramètre de position : `$2` est déclaré mais jamais lu, et la condition semble inversée (`push` quand la collection n'est pas vide, `insert` à la position 0 sinon).
5. **Callbacks créés automatiquement.** Quand la méthode de callback n'existe pas, `AJUI_Btn_GetSetOnClickCB`, `AJUI_Btn_GetSetOnDoubleClickCB` et `AJUI_Btn_checkValidCallback` proposent de la créer dans l'hôte avec le code `C_OBJECT($1)`, une directive obsolète en 4D 21 R4 (avertissement chez l'hôte). À remplacer par `#DECLARE($param : Object)` dans une PR dédiée.
6. **`zz_test`** appelle `CornerRadius`, alors que la fonction de la classe s'appelle `cornerRadius` (les noms de membres sont sensibles à la casse) ; la méthode d'essai ne fonctionne donc pas.

## Étapes suivantes

Chacune dans une PR séparée, après accord de Maurice :

1. Fusion de cette PR, puis Release 2.2.0 (archive `AJUI_Button_source.zip` du composant compilé et signé) et test depuis un hôte qui la déclare depuis GitHub.
2. **Nettoyage** : `zz_test`, le dossier de maquettes `extended round button/`, le `.gitignore`.
3. **Import d'AJUI_ButtonLab.** Le Lab (`AJUI_ButtonLab/` de l'ancien dépôt `AJARProject/AJUI_Button`, sous licence propriétaire AJAR) passera dans ce dépôt, dans `AJUI_ButtonLab/`, sous licence MIT : Maurice l'a approuvé au nom d'AJAR. Ses copies compilées de 2022 d'AJUI_Button, AJUI_Tip et AJUI_Banner seront remplacées par des dépendances déclarées (AJUI_Button vers les sources de ce dépôt, AJUI_Tip 1.8.1, AJUI_Banner 1.9.0 une fois publié).
4. Corrections éventuelles des défauts 3 à 5.

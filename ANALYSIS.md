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
| `Project/Sources/Methods` | 76 méthodes projet (77 à la migration ; `zz_test` retirée par le nettoyage). |
| `Project/Sources/Classes/Button.4dm` | Classe `Button` : constructeur et 56 fonctions (getters/setters, FAB, `draw`, `show`, `hide`, `enable`, `export`…). |
| `Project/Sources/settings.4DSettings` | Réglages du projet, dont `component_classStore_name="AJUI"`. Inchangé. |
| `Project/Sources/dependencies.json` | **Nouveau.** Déclare 4D SVG (`github: 4d/4D-SVG`). |
| `Settings/buildApp.4DSettings` | **Nouveau.** Construction du composant (`BuildComponent` True, nom `AJUI_Button`). Le `.gitignore` excluait `/Settings/*` et `*.4DSettings` ; ces lignes sont retirées. |
| `Resources/AJUI_btn_Constants.xlf` | Constantes d'état `AJUI_btn_default`, `AJUI_btn_hover`, `AJUI_btn_active`, `AJUI_btn_disable`, `AJUI_btn_focus`. |
| `Documentation/Methods` | Fiches markdown des 4 méthodes partagées. |
| `AJUI_ButtonLab/` | **Nouveau.** Projet de démonstration et de test (voir « AJUI_ButtonLab » plus bas). Hors du composant construit. |

Pas de formulaire dans le composant : les formulaires de test sont dans `AJUI_ButtonLab/`.

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

1. **Affichage non testé.** Le test tourne sans interface (`--headless`) : `draw`, les états au survol et au clic, les FAB et leur animation, les callbacks, l'import et l'export de modèles n'ont pas été exécutés. La compilation garantit les types et les appels, pas le rendu. AJUI_ButtonLab (maintenant dans ce dépôt) sert à ces tests ; son interface n'a pas non plus été testée.
2. **Release GitHub non testée** : le chargement par le gestionnaire de dépendances depuis une release sera vérifié avec la release 2.2.0.

Défauts relevés, déjà présents avant la migration et **non corrigés** ici (comportement conservé) :

3. **`failImport` du constructeur.** Comme dans AJUI_Tip avant la 1.8.1, `Class constructor` teste `This.btn.failImport`, qui n'est jamais renseigné, alors que le résultat de l'import est dans `$template_obj.failImport`. Un modèle introuvable n'est donc pas détecté par la classe (`New AJUI_Button` le détecte bien).
4. **`AJUI_Btn_addFab`** ignore le paramètre de position : `$2` est déclaré mais jamais lu, et la condition semble inversée (`push` quand la collection n'est pas vide, `insert` à la position 0 sinon).
5. **Callbacks créés automatiquement.** Quand la méthode de callback n'existe pas, `AJUI_Btn_GetSetOnClickCB`, `AJUI_Btn_GetSetOnDoubleClickCB` et `AJUI_Btn_checkValidCallback` proposent de la créer dans l'hôte avec le code `C_OBJECT($1)`, une directive obsolète en 4D 21 R4 (avertissement chez l'hôte). À remplacer par `#DECLARE($param : Object)` dans une PR dédiée.
6. **`zz_test`** appelait `CornerRadius`, alors que la fonction de la classe s'appelle `cornerRadius` (les noms de membres sont sensibles à la casse) ; cette méthode d'essai ne fonctionnait pas. Elle est retirée par le nettoyage (voir plus bas).

## Étapes suivantes

Chacune dans une PR séparée, après accord de Maurice :

1. ~~Fusion de la migration, puis Release 2.2.0~~ : fait (PR #7, Release 2.2.0).
2. ~~**Nettoyage**~~ : fait, voir la section « Nettoyage » ci-dessous.
3. ~~**Import d'AJUI_ButtonLab**~~ : fait, voir la section « AJUI_ButtonLab » ci-dessous.
4. Corrections éventuelles des défauts 3 à 5.
5. Tri des ressources du Lab non utilisées (liste dans « AJUI_ButtonLab », après accord de Maurice).

## Nettoyage

Fichiers retirés (aucun n'est utilisé par le code, les formulaires, `menus.json`, `folders.json` ni la construction) :

| Fichier | Raison |
| --- | --- |
| `Project/Sources/Methods/zz_test.4dm` | Méthode d'essai manuelle, appelée nulle part (vérifié dans les méthodes, la classe, `menus.json` et `folders.json`) ; elle ne fonctionnait pas (`CornerRadius` au lieu de `cornerRadius`). |
| `extended round button/examples.graffle` | Maquette OmniGraffle, sans rôle dans le composant. |
| `extended round button/examples/Canvas 1.svg` | Maquette. |
| `extended round button/examples/image2.pdf` | Maquette. |
| `extended round button/examples/image3.pdf` | Maquette. |

Aucun `.DS_Store` ni copie de conflit n'était versionné.

**Conservés : `AJUI_Btn_buildComponent` et `AJUI_BuildComponent`.** C'est la façon documentée de construire le composant (README, « Installation rapide ») : `AJUI_Btn_buildComponent` appelle `AJUI_BuildComponent("AJUI_Btn_info")`, qui appelle `BUILD APPLICATION` sur `Settings/buildApp.4DSettings`. La migration a corrigé `AJUI_BuildComponent` pour qu'il ne réécrive plus la version ; rien ne le remplace.

Après le nettoyage : compilation 4D 21 R4 sans erreur ni avertissement, `BUILD APPLICATION` OK, `codesign -v` valide.

### Cleanup (EN)

Removed: `zz_test.4dm` (manual test method, never called, and broken: `CornerRadius` instead of `cornerRadius`) and the `extended round button/` folder (4 design files: `.graffle`, `.svg`, two `.pdf`), none of which is used by code, forms, menus or the build. No `.DS_Store` or conflict copies were tracked. `AJUI_Btn_buildComponent` and `AJUI_BuildComponent` are kept: they are the documented build path (README) and were fixed in the migration. After cleanup: 4D 21 R4 compilation with no error and no warning, build OK, `codesign -v` valid.

## AJUI_ButtonLab

**Import.** `AJUI_ButtonLab/` de [AJARProject/AJUI_Button](https://github.com/AJARProject/AJUI_Button) (master 9aec507, 10 juin 2022) importé par `git subtree add --prefix=AJUI_ButtonLab` : les 20 commits qui touchent ce dossier sont conservés (le commit de fusion porte le message « Import d'AJUI_ButtonLab… historique conservé »). Contrepartie : l'historique importé contient les anciennes copies compilées des composants, environ 7 Mo d'objets git.

**Retiré du Lab :**

| Élément | Raison |
| --- | --- |
| `AJUI_ButtonLab/Components/` (AJUI_Banner, AJUI_Button, AJUI_Tip `.4dbase`, compilés en 2022, 3 Mo) | Remplacés par `Project/Sources/dependencies.json`. |
| `AJUI_ButtonLab/AJUI_ButtonLab.Match` | Fichier de correspondance des tables, vide (`<DataTableMatching/>`) ; le Lab n'a ni table ni données. |

**Dépendances.** `Project/Sources/dependencies.json` : 4D SVG (`4d/4D-SVG`), AJUI_Tip `^1.8.1`, AJUI_Banner `^1.9.0`, AJUI_Button `^2.2.0` (dépôts `AJARProject/*_source`). `AJUI_ButtonLab/environment4d.json` (`{"dependencies": {"AJUI_Button": "../"}}`) surcharge AJUI_Button avec les sources de ce dépôt ; emplacement et chemin relatif selon [Components](https://developer.4d.com/docs/21-R4/Project/components) (le fichier se place dans le dossier du projet ou un dossier parent ; les chemins relatifs partent du fichier). Supprimer ce fichier revient à la release GitHub.

**Migration 4D 21 R4.** Avant : 0 erreur, 207 avertissements (ancien fichier projet, composants GitHub). Même méthode que le composant : jetons retirés, `var`, `#DECLARE`, types tirés des symboles du compilateur, dans les 70 méthodes, la méthode de formulaire et les méthodes objet (134 fichiers sous `Forms`). `compatibilityVersion` 2140, `tokenizedText` false. Corrections propres au Lab :

1. **`_O_OBJECT SET COLOR`** (3 appels, obsolète) remplacé par [`OBJECT SET RGB COLORS`](https://developer.4d.com/docs/21-R4/commands/object-set-rgb-colors). L'ancienne commande prenait des numéros de palette (`-(avant-plan+256*fond)`, `White`=0, `Black`=15) ; la nouvelle prend des valeurs RGB. `Lab_SetBgColorWhite` : zone de test blanc sur blanc (`0x00FFFFFF`), textes `bgz_@` en noir (`0x0000`) sans fond. `Lab_setBgColor_btn` : textes `bgz_@` en blanc (`0x00FFFFFF`) sans fond ; dans la même méthode, `Black` (numéro de palette 15, passé par erreur comme valeur RGB, soit `0x00000F`) devient `0x0000`. Choix à confirmer à l'écran : l'ancien code mettait un fond noir aux textes `bgz_@` dans `Lab_SetBgColorWhite`, le nouveau n'en met pas, comme `Lab_setBgColor_btn`.
2. **Indice de tableau (533.3, 45 avertissements).** `$p->{$p->}` utilise le tableau lui-même comme indice (élément sélectionné). L'élément sélectionné est lu avant la ligne dans un entier (`$templates_pos:=$templates_ptr->`), puis `$p->{$templates_pos}` ; avant un `Case of` quand le test est dans une condition. 37 lignes ajoutées dans 17 fichiers ; même comportement.
3. **Pointeur dans une déclaration de tableau (518.5, 3 avertissements).** Dans la méthode du formulaire `Lab`, les colonnes `category_col`, `property_col` et `value_col` n'ont pas de source de données : ce sont des variables dynamiques, qu'on ne peut typer que par leur pointeur (`ARRAY TEXT($category_ptr->;0)`). Ces trois lignes gardent leur forme, entre `//%W-518.5` et `//%W+518.5`, avec un commentaire.
4. **Retypage (550.10).** Les `C_POINTER` en double disparaissent avec `var`.
5. **Version.** `AJUI_Btn_InfoLab` renvoie `AJUI Button Lab 2.2.0 (v21 R4)` (avant : `AJUI Button Lab 1.3.2 (v18)`). `AJUI_Tip_getSubFormSize` (méthode partagée, appelée par AJUI_Tip) est conservée.

Les méthodes de callback (`onClick_cb`…) gardent l'attribut `shared` : le composant les appelle par leur nom.

**Vérifications (Mac mini, 4D 21 R4, copies de la branche) :**

- Lab avec la surcharge locale : compilation **0 erreur, 0 avertissement** ; composants chargés 4D SVG, AJUI_Banner, AJUI_Button, AJUI_Tip (et 4D Labels, 4D Report, fournis par 4D). Avec une copie où `AJUI_Btn_info` renvoyait un marqueur, le Lab affichait ce marqueur : la surcharge est bien utilisée. Cela marche aussi quand le composant n'a pas été compilé avant (Lab interprété).
- Lab sans `environment4d.json` (releases GitHub seules) : **0 erreur, 0 avertissement** ; `AJUI_Btn_info` = `AJUI_Button (v21 R4) : 2.2.0` (release).
- Test sans interface du Lab : `AJUI_Btn_InfoLab` = `AJUI Button Lab 2.2.0 (v21 R4)`, `AJUI_Btn_info` = `AJUI_Button (v21 R4) : 2.2.0`, `AJUI_Tip_info` = `AJUI_Tip (v21 R4) : 1.8.1`, `New AJUI_Button` : `Name`, `Label`, `FontSize` et `Type` fonctionnent.
- Composant (racine) : 0 erreur, 0 avertissement, `BUILD APPLICATION` OK, `codesign -v` valide ; le `.4dbase` construit ne contient rien du Lab ; ses dépendances restent 4D SVG seul.
- **Non testé : l'interface** (formulaires `Lab` et `HDI_*`, dessin des boutons, couleurs, modèles).

**Ressources du Lab non référencées** (conservées ; à trier plus tard) :

| Ressource | Constat |
| --- | --- |
| `Resources/svg/tableIcons/` (8 dossiers, environ 340 fichiers, 1,4 Mo) | Aucune référence dans le code, les formulaires ni les modèles. `actions 2/` ressemble à une ancienne copie partielle d'`actions/`. Origine et licence inconnues. |
| `Resources/4D_v16_596px.png` | Aucune référence (seul `4D_v16_60px.png` est utilisé, par `HDI_PictureBtn`). |
| `Resources/Maurice_portrait2.png` | Aucune référence. |

**Licence.** Le Lab passe sous la licence MIT du dépôt (accord de Maurice Inzirillo pour AJAR SA, 22 novembre 2026 ; l'ancien dépôt était sous licence AJAR). Les icônes tierces gardent leur licence : `Resources/svg/Deemak_Daksina/` (« Free for commercial use (Include link to authors website) » d'après son `README.txt` ; lien dans le README) et `Resources/svg/si-glyph-*.svg` (licence non vérifiée).

**`.gitignore`.** Ajout de `/AJUI_ButtonLab/Project/DerivedData/`, `Logs/`, `userPreferences.*/`, `Libraries/`, `Data/`, `Resources/en.lproj/` et `Components/` (sous `AJUI_ButtonLab/`).

### AJUI_ButtonLab (EN)

`AJUI_ButtonLab/` was imported from AJARProject/AJUI_Button (9aec507) with `git subtree add`, keeping its 20 commits (about 7 MB of old compiled components in that history). Removed: `AJUI_ButtonLab/Components/` (2022 compiled AJUI_Banner, AJUI_Button, AJUI_Tip) and `AJUI_ButtonLab.Match`. Added `Project/Sources/dependencies.json` (4D SVG, AJUI_Tip `^1.8.1`, AJUI_Banner `^1.9.0`, AJUI_Button `^2.2.0`) and a committed `AJUI_ButtonLab/environment4d.json` that points AJUI_Button to the repository sources (`"../"`); delete it to use the GitHub release. Migrated to 4D 21 R4 (`compatibilityVersion` 2140, `var`/`#DECLARE` in methods, form and object methods). `_O_OBJECT SET COLOR` replaced with `OBJECT SET RGB COLORS` (palette numbers converted to RGB). Array-index warnings fixed by reading the selected element into an integer first. The three pointer-based array declarations of list box columns without a data source are kept, with a local `//%W-518.5`. `AJUI_Btn_InfoLab` returns `AJUI Button Lab 2.2.0 (v21 R4)`. Results: the Lab compiles with 0 errors and 0 warnings with the local override (verified with a marker build) and with GitHub releases only; headless test OK; the component still compiles 0/0, builds and signs, and its build contains nothing from the Lab. The UI was not tested. Unreferenced resources kept as candidates: `svg/tableIcons/`, `4D_v16_596px.png`, `Maurice_portrait2.png`. Licence: the Lab is now MIT (approved by Maurice Inzirillo for AJAR SA, 22 Nov 2026); the Deemak Daksina and si-glyph icons keep their own licences.

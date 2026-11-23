# AJUI Button

Composant 4D d'AJAR SA qui dessine des boutons en SVG dans un objet image du formulaire : rectangle ou cercle, texte, image ou composition texte + image, couleurs et bordures par état (`default`, `hover`, `active`, `disable`, `focus`), boutons d'action flottants (FAB) animés, modèles JSON, callbacks de clic et de double-clic.

Sources du composant [AJUI_Button](https://github.com/AJARProject/AJUI_Button). La documentation d'origine reste sur le [wiki](https://github.com/AJARProject/AJUI_Button/wiki/Class-Functions) et dans `Documentation/Methods`. Ce dépôt n'est pas maintenu activement ; une proposition de correction peut passer par une [pull request](https://github.com/AJARProject/AJUI_Button_source/pulls).

**4D 21 R4**, mode projet, `compatibilityVersion` 2140. Version **2.2.1** : `AJUI_Btn_info` renvoie `AJUI_Button (v21 R4) : 2.2.1`. Historique des versions : [CHANGELOG.md](CHANGELOG.md). Licence MIT (`LICENSE`).

Cette nouvelle version a été réalisée avec l'aide de Cursor et de Grok Bot. Analyse du dépôt et détail de la migration : [ANALYSIS.md](ANALYSIS.md).

## Installation rapide

**Interprété.** Ouvrir `Project/AJUI_Button.4DProject` avec 4D 21 R4, ou déclarer le dossier du dépôt comme dépendance locale d'un hôte (`"AJUI_Button": {}` dans `dependencies.json`, chemin dans `environment4d.json`). Une dépendance vers les sources ne fonctionne qu'en interprété.

**Compilé.** Construire le composant (Développement > Générer l'application, ou `AJUI_Btn_buildComponent`, qui appelle `BUILD APPLICATION` sur `Settings/buildApp.4DSettings`). Le `.4dbase` produit (avec `AJUI_Button.4DZ`, compilé pour Intel et Apple Silicon, signé) se place dans le dossier `Components` de l'hôte, ou se déclare dans `dependencies.json`. Un hôte compilé ne charge pas un composant interprété.

**4D SVG** est déclaré dans `Project/Sources/dependencies.json` (`github: 4d/4D-SVG`). Sans cette déclaration, les appels `SVG_*` ne compilent pas en 4D 21 R4. Le gestionnaire de dépendances de 4D l'installe aussi chez l'hôte.

## Utilisation

```4d
var $button : cs.AJUI.Button
$button:=AJUI_Button.new()  // ou New AJUI_Button pour l'objet à formules
$button.name("btnOK")  // objet image du formulaire
$button.label("default"; "OK")
$button.fontSize("default"; 14)
$button.draw()
```

Les fiches de chaque méthode partagée sont dans `Documentation/Methods`. Les constantes d'état (`AJUI_btn_default`, `AJUI_btn_hover`…) sont dans `Resources/AJUI_btn_Constants.xlf`.

## Changements de la migration 4D 21 R4 (2.2.0)

- `Project/AJUI_Button.4DProject` : `compatibilityVersion` 2140, `tokenizedText` false ; les jetons `:C` / `:K` ont été retirés du code. La commande 468, enregistrée sous son ancien nom `GET MOUSE`, s'écrit maintenant `MOUSE POSITION` (même commande, mêmes paramètres).
- Directives `C_TEXT`, `C_LONGINT`… remplacées par `var` ; `$0` / `$1`… remplacés par `#DECLARE(...) -> $result` (méthodes) ou par le prototype de la fonction (classe `Button`). Les types sont ceux que le compilateur déduisait déjà. Aucun changement de logique.
- Classe `Button` : propriétés déclarées avec `property`. Le nom du class store du composant (`AJUI`) ne change pas.
- `Settings/buildApp.4DSettings` ajouté (composant, cibles Intel + Apple Silicon) ; le `.gitignore` ne l'exclut plus. `AJUI_BuildComponent` ne tente plus d'incrémenter « +Build » quand la version n'a plus ce format.
- Résultat : compilation 4D 21 R4 sans erreur ni avertissement.

## AJUI_ButtonLab

Le dossier `AJUI_ButtonLab/` contient le projet de démonstration et de test du composant : le formulaire `Lab` (composer un bouton, l'enregistrer comme modèle JSON) et les formulaires `HDI_*` (« How Do I » : callbacks, FAB, bouton désactivé, composition, focus, image, texte coupé, bascule). Il vient de l'ancien dépôt [AJARProject/AJUI_Button](https://github.com/AJARProject/AJUI_Button) (commit 9aec507, juin 2022), historique conservé. Il ne fait pas partie du composant construit.

**Ouvrir le Lab.** Ouvrir `AJUI_ButtonLab/Project/AJUI_ButtonLab.4DProject` avec 4D 21 R4 (mode projet, sans fichier de données). Au premier lancement, le gestionnaire de dépendances télécharge les composants. En mode Application, le menu Fichier propose « AJUI Button Lab » et les formulaires « HDI … ».

**Dépendances** (`AJUI_ButtonLab/Project/Sources/dependencies.json`) :

| Composant | Source | Version |
| --- | --- | --- |
| 4D SVG | `github: 4d/4D-SVG` | celle de 4D |
| AJUI_Tip | `github: AJARProject/AJUI_Tip_source` | `^1.8.1` |
| AJUI_Banner | `github: AJARProject/AJUI_Banner_source` | `^1.9.0` |
| AJUI_Button | `github: AJARProject/AJUI_Button_source` | `^2.2.0` |

`^1.8.1` veut dire 1.8.1 ou plus, avant 2.0.0. Les anciennes copies compilées de 2022 (`AJUI_ButtonLab/Components/`) sont retirées.

**Surcharge locale d'AJUI_Button.** `AJUI_ButtonLab/environment4d.json` remplace la release GitHub d'AJUI_Button par les sources de ce dépôt (`"AJUI_Button": "../"`, chemin relatif au fichier) : le Lab teste donc le code de la branche courante. Ce fichier est versionné.

- En interprété, rien à faire : 4D charge le projet `../Project/AJUI_Button.4DProject` comme composant interprété.
- Pour lancer le Lab **en compilé**, compiler d'abord le composant (ouvrir `Project/AJUI_Button.4DProject` à la racine, puis Développement > Compiler) : un projet compilé ne charge pas un composant interprété.
- Pour utiliser la release GitHub `^2.2.0` à la place, supprimer `AJUI_ButtonLab/environment4d.json` (ou retirer la ligne `AJUI_Button`). Si le chemin d'`environment4d.json` est introuvable, 4D ne charge pas le composant (statut « Not found »).

**Licence.** Le Lab est maintenant sous la licence MIT de ce dépôt (`LICENSE`), avec l'accord de Maurice Inzirillo pour AJAR SA (22 novembre 2026) ; l'ancien dépôt était sous licence AJAR. Les jeux d'icônes tiers de `AJUI_ButtonLab/Resources/svg` gardent leur propre licence : `Deemak_Daksina/` (« Essentials Pack » de [Deemak Daksina](https://www.iconfinder.com/deemakdaksina), son `README.txt` indique « Free for commercial use (Include link to authors website) ») et les fichiers `si-glyph-*.svg` (licence non vérifiée).

Réalisé avec Cursor / Grok Bot (Codesky) pour Maurice Inzirillo.

---

# AJUI Button

4D component by AJAR SA that draws SVG buttons in a form picture object: rectangle or circle, text, picture or text + picture composition, colors and borders per state (`default`, `hover`, `active`, `disable`, `focus`), animated floating action buttons (FAB), JSON templates, click and double-click callbacks.

Sources of the [AJUI_Button](https://github.com/AJARProject/AJUI_Button) component. The original documentation is on the [wiki](https://github.com/AJARProject/AJUI_Button/wiki/Class-Functions) and in `Documentation/Methods`. This repository is not actively maintained; fixes can be proposed with a [pull request](https://github.com/AJARProject/AJUI_Button_source/pulls).

**4D 21 R4**, project mode, `compatibilityVersion` 2140. Version **2.2.1**: `AJUI_Btn_info` returns `AJUI_Button (v21 R4) : 2.2.1`. Release history: [CHANGELOG.md](CHANGELOG.md). MIT licence (`LICENSE`).

This new version was made with the help of Cursor and Grok Bot. Repository analysis and migration details: [ANALYSIS.md](ANALYSIS.md) (in French).

## Short install

**Interpreted.** Open `Project/AJUI_Button.4DProject` with 4D 21 R4, or declare the repository folder as a local host dependency (`"AJUI_Button": {}` in `dependencies.json`, path in `environment4d.json`). A dependency on sources works in interpreted mode only.

**Compiled.** Build the component (Design > Build Application, or `AJUI_Btn_buildComponent`, which calls `BUILD APPLICATION` on `Settings/buildApp.4DSettings`). Put the resulting `.4dbase` (with `AJUI_Button.4DZ`, compiled for Intel and Apple Silicon, signed) in the host `Components` folder, or declare it in `dependencies.json`. A compiled host does not load an interpreted component.

**4D SVG** is declared in `Project/Sources/dependencies.json` (`github: 4d/4D-SVG`). Without it, the `SVG_*` calls do not compile in 4D 21 R4. 4D's dependency manager also installs it in the host.

## Usage

```4d
var $button : cs.AJUI.Button
$button:=AJUI_Button.new()  // or New AJUI_Button for the formula object
$button.name("btnOK")  // form picture object
$button.label("default"; "OK")
$button.fontSize("default"; 14)
$button.draw()
```

Each shared method is documented in `Documentation/Methods`. The state constants (`AJUI_btn_default`, `AJUI_btn_hover`…) are in `Resources/AJUI_btn_Constants.xlf`.

## 4D 21 R4 migration changes (2.2.0)

- `Project/AJUI_Button.4DProject`: `compatibilityVersion` 2140, `tokenizedText` false; the `:C` / `:K` tokens were removed from the code. Command 468, stored under its old name `GET MOUSE`, is now written `MOUSE POSITION` (same command, same parameters).
- `C_TEXT`, `C_LONGINT`… directives replaced with `var`; `$0` / `$1`… replaced with `#DECLARE(...) -> $result` (methods) or with the function prototype (`Button` class). Types are the ones the compiler already inferred. No logic change.
- `Button` class: properties declared with `property`. The component class store name (`AJUI`) is unchanged.
- `Settings/buildApp.4DSettings` added (component, Intel + Apple Silicon targets); `.gitignore` no longer excludes it. `AJUI_BuildComponent` no longer tries to increment "+Build" when the version no longer has that format.
- Result: 4D 21 R4 compilation with no error and no warning.

## AJUI_ButtonLab

The `AJUI_ButtonLab/` folder holds the component's demo and test project: the `Lab` form (build a button, save it as a JSON template) and the `HDI_*` forms ("How Do I": callbacks, FAB, disabled button, composition, focus, picture, clipped text, toggle). It comes from the former [AJARProject/AJUI_Button](https://github.com/AJARProject/AJUI_Button) repository (commit 9aec507, June 2022), with its history. It is not part of the built component.

**Opening the Lab.** Open `AJUI_ButtonLab/Project/AJUI_ButtonLab.4DProject` with 4D 21 R4 (project mode, no data file). On first launch the dependency manager downloads the components. In Application mode, the File menu lists "AJUI Button Lab" and the "HDI …" forms.

**Dependencies** (`AJUI_ButtonLab/Project/Sources/dependencies.json`):

| Component | Source | Version |
| --- | --- | --- |
| 4D SVG | `github: 4d/4D-SVG` | matching 4D |
| AJUI_Tip | `github: AJARProject/AJUI_Tip_source` | `^1.8.1` |
| AJUI_Banner | `github: AJARProject/AJUI_Banner_source` | `^1.9.0` |
| AJUI_Button | `github: AJARProject/AJUI_Button_source` | `^2.2.0` |

`^1.8.1` means 1.8.1 or later, below 2.0.0. The old 2022 compiled copies (`AJUI_ButtonLab/Components/`) are removed.

**Local AJUI_Button override.** `AJUI_ButtonLab/environment4d.json` replaces the AJUI_Button GitHub release with this repository's sources (`"AJUI_Button": "../"`, relative to the file), so the Lab tests the current branch. The file is committed.

- Interpreted: nothing to do; 4D loads `../Project/AJUI_Button.4DProject` as an interpreted component.
- To run the Lab **compiled**, compile the component first (open the root `Project/AJUI_Button.4DProject`, then Design > Compiler): a compiled project does not load an interpreted component.
- To use the `^2.2.0` GitHub release instead, delete `AJUI_ButtonLab/environment4d.json` (or remove its `AJUI_Button` line). If the `environment4d.json` path is not found, 4D does not load the component ("Not found" status).

**Licence.** The Lab is now under this repository's MIT licence (`LICENSE`), approved by Maurice Inzirillo for AJAR SA (22 November 2026); the former repository used an AJAR licence. The third-party icon sets in `AJUI_ButtonLab/Resources/svg` keep their own licences: `Deemak_Daksina/` ("Essentials Pack" by [Deemak Daksina](https://www.iconfinder.com/deemakdaksina); its `README.txt` says "Free for commercial use (Include link to authors website)") and the `si-glyph-*.svg` files (licence not checked).

Made with Cursor / Grok Bot (Codesky) for Maurice Inzirillo.

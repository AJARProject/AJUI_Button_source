# AJUI Button

Composant 4D d'AJAR SA qui dessine des boutons en SVG dans un objet image du formulaire : rectangle ou cercle, texte, image ou composition texte + image, couleurs et bordures par état (`default`, `hover`, `active`, `disable`, `focus`), boutons d'action flottants (FAB) animés, modèles JSON, callbacks de clic et de double-clic.

Sources du composant [AJUI_Button](https://github.com/AJARProject/AJUI_Button). La documentation d'origine reste sur le [wiki](https://github.com/AJARProject/AJUI_Button/wiki/Class-Functions) et dans `Documentation/Methods`. Ce dépôt n'est pas maintenu activement ; une proposition de correction peut passer par une [pull request](https://github.com/AJARProject/AJUI_Button_source/pulls).

**4D 21 R4**, mode projet, `compatibilityVersion` 2140. Version **2.2.0** : `AJUI_Btn_info` renvoie `AJUI_Button (v21 R4) : 2.2.0`. Licence MIT (`LICENSE`).

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

Réalisé avec Cursor / Grok Bot (Codesky) pour Maurice Inzirillo.

---

# AJUI Button

4D component by AJAR SA that draws SVG buttons in a form picture object: rectangle or circle, text, picture or text + picture composition, colors and borders per state (`default`, `hover`, `active`, `disable`, `focus`), animated floating action buttons (FAB), JSON templates, click and double-click callbacks.

Sources of the [AJUI_Button](https://github.com/AJARProject/AJUI_Button) component. The original documentation is on the [wiki](https://github.com/AJARProject/AJUI_Button/wiki/Class-Functions) and in `Documentation/Methods`. This repository is not actively maintained; fixes can be proposed with a [pull request](https://github.com/AJARProject/AJUI_Button_source/pulls).

**4D 21 R4**, project mode, `compatibilityVersion` 2140. Version **2.2.0**: `AJUI_Btn_info` returns `AJUI_Button (v21 R4) : 2.2.0`. MIT licence (`LICENSE`).

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

Made with Cursor / Grok Bot (Codesky) for Maurice Inzirillo.

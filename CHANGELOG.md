# Changelog

## FR

### 2.2.1 (23 novembre 2026)

Version de maintenance, sans changement de code dans le composant. `AJUI_Btn_info` renvoie `AJUI_Button (v21 R4) : 2.2.1`.

- Méthode d'essai `zz_test` retirée (#8). Elle n'était appelée nulle part et ne fonctionnait plus : elle appelait `CornerRadius` au lieu de `cornerRadius`. Elle était encore présente dans la source de la release 2.2.0 (signalé sur le forum 4D).
- Maquettes « extended round button » retirées (#8) : fichiers de conception (graffle, SVG, PDF) qui ne faisaient pas partie du composant.
- Projet de démonstration `AJUI_ButtonLab/` ajouté au dépôt (#10), migré en 4D 21 R4 et désormais sous licence MIT. Il ne fait pas partie du composant construit.
- `AJUI_ButtonLab` : retrait des appels `ActivateOnClickCB`, qui provoquaient l'erreur 317 « Une fonction est attendue » avec AJUI_Tip 1.8.1 (#11). `AJUI_Btn_InfoLab` renvoie `AJUI Button Lab 2.2.1 (v21 R4)`.
- Compilation 4D 21 R4 : 0 erreur, 0 avertissement.

### 2.2.0 (22 novembre 2026)

Migration 4D 21 R4 (#7) : `var` / `#DECLARE`, propriétés de la classe `Button` déclarées, 4D SVG déclaré comme dépendance, `Settings/buildApp.4DSettings`. Première release téléchargeable par le gestionnaire de dépendances de 4D. Détail : [README.md](README.md) et [ANALYSIS.md](ANALYSIS.md).

Réalisé avec Cursor / Grok Bot (Codesky) pour Maurice Inzirillo.

---

## EN

### 2.2.1 (23 November 2026)

Maintenance release, with no code change in the component. `AJUI_Btn_info` returns `AJUI_Button (v21 R4) : 2.2.1`.

- Test method `zz_test` removed (#8). It was never called and no longer worked: it called `CornerRadius` instead of `cornerRadius`. It was still in the 2.2.0 release source (reported on the 4D forum).
- "extended round button" mockups removed (#8): design files (graffle, SVG, PDF) that were not part of the component.
- Demo project `AJUI_ButtonLab/` added to the repository (#10), migrated to 4D 21 R4 and now under the MIT licence. It is not part of the built component.
- `AJUI_ButtonLab`: removed the `ActivateOnClickCB` calls, which raised error 317 "A function is expected" with AJUI_Tip 1.8.1 (#11). `AJUI_Btn_InfoLab` returns `AJUI Button Lab 2.2.1 (v21 R4)`.
- 4D 21 R4 compilation: 0 errors, 0 warnings.

### 2.2.0 (22 November 2026)

4D 21 R4 migration (#7): `var` / `#DECLARE`, declared `Button` class properties, 4D SVG declared as a dependency, `Settings/buildApp.4DSettings`. First release downloadable by the 4D dependency manager. Details: [README.md](README.md) and [ANALYSIS.md](ANALYSIS.md).

Made with Cursor / Grok Bot (Codesky) for Maurice Inzirillo.

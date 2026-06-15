# # # # # # # # # #
# CHANGES #
# # # # # # # # # #


## v0.0.3-shellfarbe-integrated — 2026-06-15

- Zweite Upload-Runde in die vorhandene Ordnerstruktur integriert.
- Bereits vorhandene Upload-Duplikate nicht erneut als funktionale Scripts angelegt, sondern unter `references/original_uploads/20260615-batch2/` archiviert.
- Neue Shellfarbe-Konfiguration als guarded Safe-Import ergaenzt: `scripts/config/shellfarbe_install_safe-v0.0.3.sh`.
- Duplicate-Report hinzugefuegt: `notes/DUPLICATE_CHECK_20260615_BATCH2.md`.
- `scripts/INDEX.md`, Kategorie-Doku und Manifest aktualisiert.

## v0.0.2-safe-import — 2026-06-15

- Neue DrDebug-Skriptstruktur erweitert:
  - `scripts/automization/`
  - `scripts/collect/`
  - `scripts/config/`
  - `scripts/maintenance/`
  - `scripts/deploy/`
  - `scripts/backup/`
  - `scripts/verify/`
  - `scripts/templates/`
  - `scripts/lib/`
- Gemeinsame Safe-Library hinzugefuegt: `scripts/lib/drdebug-safe-lib.sh`.
- Uploads als nicht-ausfuehrbare Referenzen gesichert: `references/original_uploads/*.txt`.
- GitHub-Setup-Skripte konsolidiert und mit User-/Repo-/Pfadabfrage neu erstellt.
- Flatpak/Discover, RetroArch, Nix, proot, JournalGPT, KodiWulf/Push als sichere Varianten neu strukturiert.
- Umfangreiche Installationsskripte fuer Arch-Chroot, Podman, UnrealIRCd/Anope und Deutsch-Locale als guarded imports eingebunden.
- `scripts/INDEX.md`, `MANIFEST.sha256.md`, `UPDATE_PROCESS.md` und Kategorie-Doku aktualisiert.

## v0.0.1 — 2026-06-14

- Ursprungsbundle mit Agenten-Direktive und ersten sicheren DrDebug-Skriptvorlagen.

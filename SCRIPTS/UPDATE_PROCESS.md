# # # # # # # # # # # # #
# UPDATE PROCESS #
# # # # # # # # # # # # #

## 1. Neue Skripte aufnehmen

1. Uploads zuerst unter `references/original_uploads/` als `.txt` sichern.
2. Pruefen, ob ein Skript bereits in gleicher oder aehnlicher Form vorhanden ist.
3. Doppelte Skripte konsolidieren statt mehrfach ausfuehrbar ablegen.
4. Neue ausfuehrbare Varianten unter passender Kategorie in `scripts/` erstellen.

## 2. Sicherheitsregeln

- Keine Install-/Fix-/Deploy-Aktion ohne `--apply` oder `DRDEBUG_APPLY=1`.
- User-, Repo-, Pfad-, Host- und Servicewerte als ENV oder interaktive Abfrage.
- Vor Dateiueberschreibungen Backup via `drdebug_backup_file`.
- Kein automatisches `sudo pacman -Syu --noconfirm`, ohne dass das Skript klar als guarded import markiert und bestaetigt wurde.
- Keine Shellstart-Dateien mit output-produzierenden Befehlen fuellen.
- Interaktive/risikoreiche Tools nicht global wrappen.

## 3. Nach jeder Aenderung

```bash
find scripts -type f -name '*.sh' -print0 | while IFS= read -r -d '' f; do
  bash -n "$f" || exit 1
done
python3 - <<'PY'
from pathlib import Path
import hashlib
for p in sorted(Path('.').rglob('*')):
    if p.is_file() and p.name != 'MANIFEST.sha256.md':
        print(hashlib.sha256(p.read_bytes()).hexdigest(), p)
PY
```

## 4. Versionierung

- Reine Build-/Syntax-Fixes ohne Funktionsaenderung: Version nicht erhoehen.
- Neue Skripte, neue Struktur oder Sicherheitslogik: Patch-/Import-Version erhoehen.
- Jede neue ZIP enthaelt aktualisierte `CHANGES.md`, `UPDATE_PROCESS.md`, `scripts/INDEX.md` und `MANIFEST.sha256.md`.


## v0.0.3 Update-Hinweis

1. ZIP entpacken.
2. Neue Datei `scripts/config/shellfarbe_install_safe-v0.0.3.sh` pruefen.
3. Erst trocken starten:

```bash
bash scripts/config/shellfarbe_install_safe-v0.0.3.sh --dry-run
```

4. Danach bewusst anwenden:

```bash
bash scripts/config/shellfarbe_install_safe-v0.0.3.sh --apply
```

5. Nach Shell-Konfigurationsaenderungen neue Shell oeffnen oder `source ~/.bashrc` ausfuehren.

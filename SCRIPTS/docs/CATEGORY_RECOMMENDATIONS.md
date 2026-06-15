# # # # # # # # # # # # # # # # #
# DrDebug Kategorie-Empfehlungen #
# # # # # # # # # # # # # # # # #

## Bereits gewuenscht / enthalten

| Ordner | Zweck |
|---|---|
| `scripts/debug/` | Diagnose ohne Aenderung. |
| `scripts/install/` | Installation neuer Tools/Services. |
| `scripts/fix/` | Reparaturen mit Backup und Bestaetigung. |
| `scripts/automization/` | Timer, Runner, wiederkehrende Jobs. Der Name bleibt wegen deiner Vorgabe erhalten. |

## Weitere sinnvolle Kategorien

| Ordner | Warum nuetzlich |
|---|---|
| `scripts/lib/` | Gemeinsame Safe-Funktionen, Prompting, Backups, Apply-Gates. |
| `scripts/collect/` | Log-/Journal-/Inventar-Sammler getrennt von reinen Debugchecks. |
| `scripts/config/` | Locale, PATH, Shell, Git-Config, App-Config ohne komplette Installation. |
| `scripts/maintenance/` | Updates, Cleanup, Appstream, Cache-Pflege. |
| `scripts/deploy/` | Push/Release/Sync/Deployment getrennt von Automatisierung. |
| `scripts/backup/` | Backup/Restore als eigene Sicherheitslage vor Fixes. |
| `scripts/verify/` | Nachkontrollen, Smoke-Tests, Hashchecks, Syntaxchecks. |
| `scripts/templates/` | Einheitliches Muster fuer neue sichere Skripte. |
| `references/original_uploads/` | Nicht-ausfuehrbare Referenzkopien der importierten Uploads. |

## Empfehlung

`automization` ist als Projektordner enthalten, weil du ihn so benannt hast. Fuer neue, sauber benannte Agenten kann zusaetzlich `automation` als Alias/Dokuordner genutzt werden. Laufende Skripte liegen weiterhin in `scripts/automization/`, damit nichts bricht.

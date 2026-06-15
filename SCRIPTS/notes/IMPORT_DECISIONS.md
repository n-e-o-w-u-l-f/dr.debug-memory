# # # # # # # # # # # #
# Import Decisions v0.0.2 #
# # # # # # # # # # # #

## Konsolidiert statt doppelt importiert

| Upload | Entscheidung |
|---|---|
| `02_setup_github.sh` und `02_setup_github(1).sh` | Zu `scripts/install/github_repo_setup_safe-v0.0.2.sh` zusammengefuehrt. Beide Varianten waren fast gleich, unterschieden sich aber im Zielrepo `neowulf-repo` vs. `neowulf-backup`. Die Safe-Version fragt Owner/Repo/Pfad ab. |
| `install_unrealircd.sh` und `install_unrealircd_legion_v2.sh` | v2 als guarded Import verwendet: `scripts/install/unrealircd_anope_arch_install_guarded-v0.0.2.sh`. Die aeltere Variante bleibt nur als Referenzkopie erhalten. |
| `journalgpt_collect.sh` und `install_journalgpt_collector.sh` | In Collector-Skript und Timer-Installer getrennt: `scripts/collect/...` und `scripts/automization/...`. |

## Safe-Form Prinzipien

- Standard: Dry-Run bzw. keine Aenderung ohne `--apply` oder `DRDEBUG_APPLY=1`.
- Exakte Bestaetigungstokens vor Installationen, Fixes, Pushes oder Service-Aenderungen.
- User-, Repo-, Zielordner- und Remote-Werte werden abgefragt oder per ENV gesetzt.
- Harte `/home/deck` Defaults wurden in neuen Skripten durch `$HOME` ersetzt.
- Komplexe, bereits umfangreich geschuetzte Ursprungsskripte wurden als `guarded import` mit extra Vorschalt-Sicherung eingebunden.
- Original-Uploads liegen nicht-ausfuehrbar unter `references/original_uploads/*.txt`.

# Dr. Debug's Werkstatt

Hast du auch ein defektes Gerät? Reparieren war dir immer zu schwer?

Dr. Debug /MEMORY/ ist eine strukturierte, quellenbasierte Wissensdatenbank für technische Fehlerbilder, Geräte, Fehlermeldungen, Reparaturwege, Diagnosen, Workarounds und bestätigte Lösungen.

---

## Wissensstand

| Area | Status | Count / Result | Last checked | Notes |
|---|---|---:|---|---|
| Endpoint count matrix | COUNT_SCAN_REQUIRED | 67 visible rows | 2026-06-25 | Flat global endpoint matrix in `MEMORY/INDEXES/endpoint_count_matrix.md`; scanner rules in `MEMORY/SCANNERS/count_scan_rules.md`. |
| Endpoint count rules | ACTIVE_COUNT_RULE_DRAFT | 1 | 2026-06-25 | No `_GLOBAL` prefix, no duplicate names, no metadata-only endpoints, no relationship-only endpoints, no path-specific prefix explosion. |
| Endpoint scanner planning | ACTIVE_SCANNER_RULE_DRAFT | 1 | 2026-06-26 | Scanner emits Markdown and JSON reports; machine-readable output uses `COUNT_SCAN_READY_FOR_REVIEW`. |
| Endpoint count validation report | COUNT_SCAN_READY_FOR_REVIEW | 2 | 2026-06-26 | Markdown: `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md`; JSON: `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json`; script: `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`. |
| BATCH memory artifacts | PRESENT_INDEXED_REVIEW_REQUIRED | 162 files | 2026-06-23 | Current BATCH file count across MEMORY. Indexed in MEMORY/INDEX; later schema/status review required. No safe delete candidates identified. |
| BATCH duplicate filename check | PASS | 0 duplicates | 2026-06-23 | Filename-level duplicate check returned no duplicate names. |
| BATCH audit report | STATIC_CHECK | 1 | 2026-06-23 | `MEMORY/REPORTS/AUDIT/AR-20260623-batch-memory-index-sync.md`. |
| BATCH proposal lineage | REVIEW_LINEAGE | 59 files | 2026-06-23 | `MEMORY/PROPOSALS/**`; retain as proposal/review lineage unless canonical replacement is proven. |
| BATCH reports | REVIEW_LINEAGE | 20 files | 2026-06-23 | `MEMORY/REPORTS/**`; includes audit/report evidence. |
| BATCH status records | REVIEW_LINEAGE | 15 files | 2026-06-23 | `MEMORY/STATUS/**`; retain as status history. |
| BATCH canonical-ish category files | INDEX_COVERAGE_REQUIRED | 68 files | 2026-06-23 | Outside PROPOSALS/REPORTS/STATUS; requires MEMORY/INDEX coverage and later schema/status review. |
| Four 25-item batch plan | REPORT_ONLY | 1 | 2026-06-21 | `MEMORY/PROPOSALS/BATCHES/MP-20260619-next-four-25-step-batches.md`. |
| Validation gate report | REPORT_ONLY | 1 | 2026-06-21 | `MEMORY/REPORTS/VALIDATION/VR-20260619-next-100-roadmap-gate-report.md`. |
| Next actions report | REPORT_ONLY | 1 | 2026-06-21 | `MEMORY/REPORTS/NEXT_ACTIONS/NA-20260619-next-3-directions.md`. |
| Next-100 roadmap report | REPORT_ONLY | 1 | 2026-06-21 | `MEMORY/ROADMAPS/RM-20260619-next-100-safe-steps.md`. |
| Canonical promotions from this package | BLOCKED | 0 | 2026-06-21 | No item is marked `PROMOTION_READY` by this package. |
| Local clone grep / CI-like static checks | REQUIRED_BEFORE_PROMOTION | 0 | 2026-06-21 | Must be run locally before any later promotion. |
| Binaries / downloads / rehosting | NOT_INCLUDED | 0 | 2026-06-21 | No binary download, raw crawl dump, manual rehosting or public rehosting is included. |
| README update mode | MATRIX_SECTION | 1 | 2026-06-26 | README matrix updated for endpoint-count planning, JSON validation output and review-ready status visibility. |
| CustomGPT Knowledge behavior guard | ACTIVE_KNOWLEDGE_REPLACEMENT | 1 file | 2026-06-28 | `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`; autodidactic repeat-error prevention, agent loop, attachment intake and self-error database. |

---

## Dr. Debug /MEMORY/

Dieses Repository sammelt und ordnet technische Erinnerungen in einer dauerhaft wartbaren Struktur. Ziel ist eine agentenlesbare Memory-Basis für Reparatur-, Diagnose- und Planungsfragen.

Die Datenbank soll unter anderem helfen zu beantworten:

- Welche Fehlermeldung gehört zu welchem System, Programm, Paket, Gerät oder Dienst?
- Welche Ursachen sind bekannt, wahrscheinlich oder historisch dokumentiert?
- Welche Reparaturwege wurden gefunden, geprüft oder von Usern bestätigt?
- Welche Geräte, Betriebssysteme, Programme, Pakete, Logs und Handbücher gehören zusammen?
- Welche Quellen, Indizes und Querverweise müssen erhalten bleiben, damit Wissen nicht verloren geht?

## Was dieses Repository nicht ist

Dieses Repository ist keine offizielle Reparaturanleitung, kein Ersatz für Fachpersonal und keine Garantie, dass ein Gerät gefahrlos repariert werden kann.

Vor jeder realen Reparatur müssen Risiken, Stromversorgung, Garantie, Datenschutz, Sicherheit und Herstellerhinweise geprüft werden. Besonders bei Netzteilen, Akkus, Hochspannung, Fahrzeugen, medizinischen Geräten, sicherheitskritischen Systemen oder Geräten mit Brand-/Explosionsgefahr gilt: nicht blind ausführen, sondern zuerst prüfen, absichern und im Zweifel Fachpersonal einbeziehen.

## Für ChatGPT-Agenten

Agenten sollen dieses Repository lesen, bevor sie neue technische Memory-Dateien anlegen, bestehende Einträge ändern oder Rechercheergebnisse dauerhaft integrieren.

Wichtige Bereiche:

- `AGENTS.md`
- `UPDATE_PROCESS.md`
- `MEMORY/INDEX.md`
- `MEMORY/SCHEMA.md`
- `MEMORY/QUALITY_RULES.md`
- `MEMORY/INDEXES/endpoint_count_matrix.md`
- `MEMORY/INDEXES/endpoint_count_rules.md`
- `MEMORY/SCANNERS/count_scan_rules.md`
- `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`
- `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md`
- `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json`
- `MEMORY/SOURCES/SOURCE_REGISTRY.md`
- `CHANGES.md`

Agenten sollen keine Vollständigkeit behaupten, wenn keine vollständige Primärquelle existiert.
Neue Daten müssen nachvollziehbar, dedupliziert, quellenbezogen und agentenlesbar eingepflegt werden.

## Endpoint count matrix policy

The endpoint count matrix uses a flat global visible collection model. Deep paths are filters and relations, not duplicated visible endpoints.

Example path: `Geräte > Konsolen > Retro-Konsolen > Sega > Mega Drive > Spiele > Sonic the Hedgehog`

Correct count resolution:

- count `Geräte`, `Geräteklassen`, `Hersteller`, `Produktcodes`, `Handbücher`, `Cover`, `Screenshots`, `Reviews`, `Bekannte-Fehler`, `Mods`, `Versionen-Revisionen`, `Emulatoren`, `Fan-Übersetzungen` and `Modding-Tools` globally;
- link platform/manufacturer/game as filterable relation metadata;
- do not create game-/console-specific endpoint explosions.

TV rule: TVs branch by device class, display technology, smart capability, operating system, tuner, firmware and repair data. Smart-TV is a feature/software class, not a panel technology.

Network rule: HTTP is counted as a protocol record under `Netzwerkprotokolle`; useful visible HTTP endpoints include versions, methods, status codes, headers and standards.

## Grundprinzipien

1. Quellen vor Behauptungen.
2. Bestätigt ist nicht gleich gefunden.
3. Deduplizierung vor Datenmüll.
4. Agentenlesbarkeit vor Schönschrift.
5. Sicherheit vor Aktionismus.
6. Zählmatrix vor Crawl: sichtbare Endpunkte erst planen, dann scannen, dann prüfen.

## Typische Inhalte

- Betriebssysteme und Distributionen
- Linux-, macOS-, Windows-, DOS- und FreeDOS-Programme
- Paketmanager, Pakete und Paketversionen
- Android-Apps und Package Names
- Geräte, Mainboards, Receiver, Smartphones, Tablets, Konsolen und Embedded-Systeme
- Fehlermeldungen, Fehlercodes und Log-Muster
- journalctl-, dmesg-, systemd-, kernel-, ADB-, SSH-, Git-, Pacman- und Netzwerkfehler
- Service Manuals, Datenblätter, Handbücher, Recovery-Guides und Installationshinweise
- bekannte Ursachen, Diagnosepfade, Workarounds und bestätigte Fixes
- Quellenregister, Indexdateien, Agenten-Direktiven und Update-Prozesse

## Lizenzhinweis

Falls eine `LICENSE`-Datei vorhanden ist, gilt diese.
Falls keine Lizenzdatei vorhanden ist, bedeutet die öffentliche Sichtbarkeit des Repositories nicht automatisch, dass Inhalte frei weiterverwendet werden dürfen. Forks, Zitate, Quellenverweise und eigene Ableitungen sollten immer sauber und respektvoll mit den ursprünglichen Inhalten umgehen.

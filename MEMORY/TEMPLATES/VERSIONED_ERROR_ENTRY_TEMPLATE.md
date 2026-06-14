# # # # # # # # # # # # # # # # # # #
# VERSIONED ERROR ENTRY TEMPLATE #
# # # # # # # # # # # # # # # # # # #

status: ACTIVE
scope: Template fuer versionierte Fehler-, Fehlercode-, Firmware- und Paket-Fix-Eintraege.
created: 2026-06-14
last_modified: 2026-06-14

# # # # # # # #
# Pflichtfelder #
# # # # # # # #

Jeder versionierte Fehlerdatensatz braucht mindestens diese Gruppen:

- `id`
- `category`
- `status`
- `component_identity`
- `version_scope`
- `error_identity`
- `version_behavior_matrix`
- `fix_matrix`
- `compatibility`
- `anti_patterns`
- `related_entries`
- `sources`
- `confidence`
- `last_reviewed`
- `needs_review`
- `review_reason`

# # # # # # # # # # # # # #
# Komponenten-Identitaet #
# # # # # # # # # # # # # #

Erfasse, soweit zutreffend:

- Ecosystem
- Hersteller
- Produkt
- Paketname
- Paketmanager
- Distribution
- Architektur
- Geraetemodell
- Hardware-Revision
- Chipsatz
- Firmware-Zweig
- Upstream-Projekt
- PURL/CPE
- Aliase

Unklare Zuordnungen werden nicht geraten, sondern mit `needs_review: true` markiert.

# # # # # # # # # # # #
# Versionsbindung #
# # # # # # # # # # # #

Erfasse pro Eintrag:

- Betroffene Versionen
- Version, in der der Fehler eingefuehrt wurde
- Version, in der der Fehler behoben wurde
- Erste bekannte fehlerhafte Version
- Letzte bekannte fehlerhafte Version
- Erste bekannte gute Version
- Nicht betroffene Versionen
- Unbekannte Versionen
- EOL-Versionen
- Vorabversionen

Wenn die Version nicht sicher bekannt ist, muss der Eintrag als Review-Fall markiert werden.

# # # # # # # # # # # #
# Verhalten je Version #
# # # # # # # # # # # #

Die Matrix muss je Version festhalten:

- Status
- Verhalten
- Fehlermuster
- Schweregrad
- typische Ursachen
- Diagnosehinweise
- sichere Fix-Hinweise
- Workaround-Hinweise
- Regressionen
- Quellen

# # # # # # # # # #
# Fix je Version #
# # # # # # # # # #

Die Fix-Matrix muss je Version festhalten:

- empfohlener sicherer Fix
- notwendige Diagnose vorher
- Backup-Bedarf
- Neustart-Bedarf
- Migrationsbedarf
- Datenverlustrisiko
- Rollback-Strategie
- gefaehrliche Scheinfixes
- Pruefschritte nach dem Fix
- Quelle

# # # # # # # # # # #
# Mindestregeln #
# # # # # # # # # # #

Ein Eintrag ist erst nutzbar, wenn mindestens vorhanden sind:

- eindeutige Komponente oder eindeutig markierter Review-Bedarf,
- konkrete Version oder eindeutig markierter unbekannter Versionsbereich,
- Fehlercode oder Fehlermuster,
- Diagnoseweg,
- sicherer Fix oder klarer Hinweis, dass noch kein sicherer Fix bekannt ist,
- Quelle mit Versionsbezug,
- Reviewstatus.

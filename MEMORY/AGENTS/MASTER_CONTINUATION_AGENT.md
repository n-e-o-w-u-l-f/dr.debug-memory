# # # # # # # # # # # # # # # # # # # # # #

# DR. DEBUG MASTER CONTINUATION AGENT

# # # # # # # # # # # # # # # # # # # # # #

```yaml
directive_id: AGENT-20260614-master-continuation
title: Dr. Debug Master Continuation Agent
status: ACTIVE
version: 0.0.1
repository: n-e-o-w-u-l-f/dr.debug-memory
primary_branch_assumption: main
scope:
  - vollständige GitHub-Wissensdatenbank lesen
  - mehrere Arbeitspakete koordinieren
  - Subagenten pro Task einsetzen
  - Software-/Paket-/Distributionswissen fortsetzen
  - PHP Error Database fortsetzen
  - Device & Manufacturer Knowledge fortsetzen
handoff_file:
  - software_agent_handoff_current_20260614.md
```

# # # # #

# Auftrag

# # # # #

Du bist ein neuer ChatGPT-Agent für das Repository:

```text
n-e-o-w-u-l-f/dr.debug-memory
```

Deine Aufgabe ist **nicht**, neu anzufangen.

Du musst den bestehenden GitHub-Wissensstand vollständig lesen, den aktuellen Arbeitsstand rekonstruieren und dann koordiniert an den begonnenen Wissensbereichen weiterarbeiten:

```text
1. Vollständige GitHub-Wissensdatenbank lesen
2. Bei mehreren Tasks pro Task Subagenten einsetzen
3. Beim aktuellen Software-Gate weiterarbeiten: A+B+C, danach D, danach E
4. Software-, Paket-, Betriebssystem- und Distributionswissen fortsetzen
5. PHP Error Database Ingest Agent: Stand prüfen und weiterarbeiten
6. Device & Manufacturer Knowledge Ingest Agent: Stand prüfen und weiterarbeiten
```

Arbeite quellenbasiert, fortsetzbar, kleinschrittig und repository-konform.

# # # # # # # # # # # # # # # #

# Oberste Grundregel: Erst lesen

# # # # # # # # # # # # # # # #

Vor jeder Änderung musst du die vorhandene Repository-Struktur lesen.

Mindestens prüfen:

```text
/AGENTS.md
/README.md
/CHANGES.md
/UPDATE_PROCESS.md
/MEMORY/INDEX.md
/MEMORY/SCHEMA.md
/MEMORY/QUALITY_RULES.md
/MEMORY/SOURCE_REGISTRY.md
/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
/MEMORY/AGENTS/README.md
/MEMORY/STATE/
```

Danach alle vorhandenen Hauptbereiche prüfen:

```text
/MEMORY/AGENTS/
/MEMORY/SOFTWARE/
/MEMORY/SOURCES/
/MEMORY/TEMPLATES/
/MEMORY/PHP/
/MEMORY/HARDWARE/
/MEMORY/ERRORS/
/MEMORY/ERROR_CODES/
/MEMORY/MANUALS/
/MEMORY/RUNS/
```

Wenn einzelne Bereiche fehlen, dokumentiere das. Erfinde keine Struktur, wenn eine bestehende Struktur im Repository bereits einen Kanon vorgibt.

# # # # # # # # # # # # # #

# Vollständige Wissensprüfung

# # # # # # # # # # # # # #

Erstelle zu Beginn intern oder als Run-Notiz eine Bestandsaufnahme:

```yaml
repo_checked: true
default_branch:
latest_known_commit:
governance_files_read:
agent_directives_read:
memory_indexes_read:
source_registry_read:
quality_rules_read:
schema_read:
domain_checkpoints_read:
open_gates:
open_review_items:
open_cleanup_items:
write_access_status:
```

Besonders wichtig:

* Lies vorhandene Checkpoints.
* Lies vorhandene `STATUS`, `TODO`, `RUN_LOG`, `INGEST_STATE`, `CHECKPOINT`, `PROGRESS` Dateien.
* Prüfe, ob ein vorheriger Agent bereits angefangen hat.
* Prüfe, wo der vorherige Agent aufgehört hat.
* Setze dort fort.
* Erzeuge keine Dubletten.
* Überschreibe keine geprüften Inhalte ohne Begründung.

# # # # # # # # # #

# Subagenten-Regel

# # # # # # # # # #

Wenn mehrere unabhängige Tasks existieren, muss der Master-Agent pro Task einen Subagenten beauftragen.

Wenn die Umgebung echte Subagenten, Codex-Tasks, parallele Worker oder Task-Delegation unterstützt, beauftrage sie direkt.

Wenn keine echten Subagenten verfügbar sind, simuliere Subagenten durch klare Subtask-Blöcke und arbeite sie nacheinander ab.

Mindest-Subagenten:

```text
SUBAGENT-001-SOFTWARE
SUBAGENT-002-PHP-ERRORS
SUBAGENT-003-DEVICES-HARDWARE
SUBAGENT-004-GOVERNANCE-CLEANUP
```

Jeder Subagent muss liefern:

```yaml
subagent_id:
scope:
files_read:
current_checkpoint:
changes_made:
files_created:
files_updated:
files_deleted:
sources_used:
blocked_actions:
review_points:
next_resume_point:
commit_shas:
```

Der Master-Agent muss am Ende alle Subagenten-Ergebnisse zusammenführen und einen gemeinsamen Fortsetzungsstatus schreiben.

# # # # # # # # # # # # # # # # #

# Subagent 001: Software-Wissen

# # # # # # # # # # # # # # # # #

## Pflichtdateien lesen

Der Software-Subagent muss zuerst lesen:

```text
/AGENTS.md
/README.md
/CHANGES.md
/UPDATE_PROCESS.md
/MEMORY/INDEX.md
/MEMORY/SCHEMA.md
/MEMORY/QUALITY_RULES.md
/MEMORY/SOURCE_REGISTRY.md
/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
/MEMORY/AGENTS/README.md
/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
/MEMORY/SOFTWARE/INDEX.md
/MEMORY/TEMPLATES/SOFTWARE_PACKAGE_ENTRY_TEMPLATE.md
/MEMORY/SOFTWARE/CHECKPOINTS/software-package-research-progress.md
/MEMORY/SOFTWARE/CHECKPOINTS/software-package-next-small-batch.md
/MEMORY/SOURCES/software-arch-linux-pacman-pilot-sources.md
```

Zusätzlich muss die Übergabedatei gelesen werden:

```text
software_agent_handoff_current_20260614.md
```

## Aktueller Stand

Der Software-Bereich steht am Gate:

```text
A) pacman Detailwissen ausbauen
B) pacman.conf Detailwissen ausbauen
C) pacman-contrib Einzelwerkzeuge ausbauen
D) Arch-Linux Paketmanager-Fehlerbilder beginnen
E) Nächsten Paketmanager-Batch starten
```

Der nächste Agent soll **A+B+C zuerst gemeinsam stabilisieren**, danach **D** beginnen und danach bei **E** erneut ein Gate setzen.

## Arbeitsreihenfolge Software

### Phase S0: Cleanup prüfen

Prüfe, ob diese temporären Schreibtestdateien existieren:

```text
/MEMORY/SOFTWARE/SOURCES/test-agent-write-check.md
/MEMORY/SOFTWARE/SOURCES/write-check-2.md
```

Wenn sie existieren und nur Platzhalter sind:

```text
chore(software): remove temporary write-check placeholders
```

Keine fachlichen Indexe mit diesen Platzhaltern verknüpfen.

### Phase S1: Agenten-README prüfen

Prüfe, ob `/MEMORY/AGENTS/README.md` den Software-Agenten verlinkt.

Falls nicht, ergänze einen Navigationseintrag zu:

```text
/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
/MEMORY/SOFTWARE/
/MEMORY/SOFTWARE/INDEX.md
/MEMORY/TEMPLATES/SOFTWARE_PACKAGE_ENTRY_TEMPLATE.md
/MEMORY/SOFTWARE/CHECKPOINTS/
```

Commit-Vorschlag:

```text
docs(agents): register software package knowledge agent
```

### Phase S2: A+B+C fortsetzen

Arbeite in kleinen Commits:

```text
A) pacman Detailwissen ausbauen
B) pacman.conf Detailwissen ausbauen
C) pacman-contrib Einzelwerkzeuge ausbauen
```

Vorhandene Dateien bevorzugt erweitern:

```text
/MEMORY/SOFTWARE/PACKAGE_MANAGERS/arch-linux-pacman-pilot.md
/MEMORY/SOFTWARE/PACKAGE_MANAGERS/arch-linux-pacman-conf-pilot.md
/MEMORY/SOFTWARE/PACKAGES/arch-linux-pacman-contrib-pilot.md
/MEMORY/SOURCES/software-arch-linux-pacman-pilot-sources.md
```

Nicht sofort riskante Reparaturbefehle ergänzen.

Erlaubte erste Detailbereiche:

```text
Kurzbeschreibung
Rolle im System
Repository / Quelle
Versionsbezug
Konfigurationsbezug
Befehlsbereiche ohne destruktive Optionen
Manpage-Bezug
Paketseiten-Bezug
Offene Punkte
```

Sichere erste Befehlsbereiche:

```text
Paket suchen
Paketinformationen anzeigen
Installierte Pakete abfragen
Dateiliste eines Pakets anzeigen
Besitzer einer Datei ermitteln
Version anzeigen
Hilfe anzeigen
Manpage anzeigen
```

Zurückstellen:

```text
Reparaturbefehle
Force-Operationen
destruktive Entfernung
Paketdatenbankeingriffe
Cache-Löschungen
Systemrechte-Massenänderungen
```

### Phase S3: D beginnen

Wenn A+B+C stabil sind, beginne:

```text
D) Arch-Linux Paketmanager-Fehlerbilder beginnen
```

Pro Fehlerbild strikt trennen:

```text
Symptom
Kontext
Ursache
Diagnose
Risiko
Lösung
Nicht automatisch reparieren wenn
Quelle
Abrufdatum
Versionsbezug
```

Keine Fehler erfinden.

Keine riskanten Fixes als Standardlösung speichern.

### Phase S4: E vorbereiten

Wenn D einen ersten kleinen Draft besitzt, bereite vor:

```text
E) Nächsten Paketmanager-Batch starten
```

Vorschläge für das nächste Gate:

```text
E1) makepkg
E2) yay
E3) paru
E4) apt / Debian
E5) dnf / Fedora
```

Nicht automatisch alle starten. Gate setzen und Auswahlfrage formulieren.

# # # # # # # # # # # # # # #

# Subagent 002: PHP Errors

# # # # # # # # # # # # # # #

## Pflichtdateien lesen

Der PHP-Subagent muss zuerst lesen:

```text
/AGENTS.md
/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
/MEMORY/AGENTS/README.md
/MEMORY/SCHEMA.md
/MEMORY/QUALITY_RULES.md
/MEMORY/SOURCE_REGISTRY.md
/MEMORY/INDEX.md
/CHANGES.md
/UPDATE_PROCESS.md
/MEMORY/AGENTS/PHP_ERROR_DATABASE_INGEST_AGENT.md
/MEMORY/PHP/
/MEMORY/PHP/ERRORS/
/MEMORY/PHP/SOURCES/
```

Wenn die PHP-Agenten-Datei noch nicht im Repository existiert, lege sie anhand der bereitgestellten Direktive an:

```text
/MEMORY/AGENTS/PHP_ERROR_DATABASE_INGEST_AGENT.md
```

Commit-Vorschlag:

```text
docs(agents): add PHP error database ingestion directive
```

## Stand prüfen

Vor Fortsetzung prüfen:

```text
/MEMORY/PHP/ERRORS/INDEX.md
/MEMORY/PHP/ERRORS/ERROR_LEVELS.yaml
/MEMORY/PHP/ERRORS/THROWABLE_TREE.yaml
/MEMORY/PHP/ERRORS/MESSAGE_PATTERNS.yaml
/MEMORY/PHP/ERRORS/EXTENSIONS/
/MEMORY/PHP/ERRORS/INI_SETTINGS.yaml
/MEMORY/PHP/ERRORS/COMPOSER_AUTOLOAD.yaml
/MEMORY/PHP/ERRORS/SAPI_WEBSERVER.yaml
/MEMORY/PHP/SOURCES/
/MEMORY/PHP/RUNS/
/MEMORY/PHP/CHECKPOINTS/
```

Wenn diese Dateien fehlen, lege nicht alles auf einmal an. Starte mit Index, Quellenstub und kleinem Checkpoint.

## PHP-Arbeitsreihenfolge

Erste Import-Priorität:

```text
1. PHP Error-Level-Konstanten
2. Throwable-/Exception-Hierarchie
3. häufige Fatal Errors
4. häufige Warnings
5. häufige Notices/Deprecated-Meldungen
6. Extension-Missing-Fehler
7. PHP-Ini-Konfigurationsfehler
8. Composer-/Autoload-Fehler
9. FPM-/Webserver-Schnittstellenfehler
10. TYPO3-spezifische PHP-Fehler als getrenntes Modul
```

Beginne klein:

```text
P1) PHP Error-Level-Index als Draft
P2) Quellenmetadaten zum offiziellen PHP Manual
P3) erster Batch: E_ERROR, E_WARNING, E_PARSE, E_NOTICE
P4) Checkpoint aktualisieren
P5) Gate setzen: Error Levels weiter oder Throwable Tree starten
```

## Quellenregeln PHP

Bevorzugte Quellen:

```text
Offizielles PHP Manual
PHP Changelogs
PHP Upgrade-Guides
PHP RFCs
PHP Source Repository / Tests
Composer-Dokumentation
Framework-Quellen nur getrennt
```

Jeder Datensatz muss enthalten:

```yaml
source_url:
source_title:
retrieved_at:
license:
php_versions:
confidence:
last_reviewed:
```

## Sicherheitsregeln PHP

Nicht tun:

```text
Keine produktiven Serverbefehle ohne Diagnose
Kein chmod -R 777
Keine Fehlerunterdrückung mit @ als Lösung
display_errors=On nicht für Produktion empfehlen
Keine blinde Composer-/Vendor-Löschung
Keine Framework-Fixes als PHP-Core-Fixes ausgeben
Keine destruktiven Shell-Blöcke
```

# # # # # # # # # # # # # # # # # #

# Subagent 003: Devices / Hardware

# # # # # # # # # # # # # # # # # #

## Pflichtdateien lesen

Der Device-Subagent muss zuerst lesen:

```text
/AGENTS.md
/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
/MEMORY/AGENTS/README.md
/MEMORY/SCHEMA.md
/MEMORY/QUALITY_RULES.md
/MEMORY/SOURCE_REGISTRY.md
/MEMORY/INDEX.md
/CHANGES.md
/UPDATE_PROCESS.md
/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md
/MEMORY/HARDWARE/
/MEMORY/HARDWARE/INDEX.md
/MEMORY/HARDWARE/INGEST_STATE.yaml
```

Wenn die Device-Agenten-Datei noch nicht existiert, lege sie anhand der bereitgestellten Direktive an:

```text
/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md
```

Commit-Vorschlag:

```text
docs(agents): add device hardware database ingestion directive
```

## Stand prüfen

Vor Fortsetzung prüfen:

```text
/MEMORY/HARDWARE/INDEX.md
/MEMORY/HARDWARE/INGEST_STATE.yaml
/MEMORY/HARDWARE/MANUFACTURERS/
/MEMORY/HARDWARE/DEVICES/
/MEMORY/HARDWARE/IDS/
/MEMORY/HARDWARE/COMPATIBILITY/
/MEMORY/HARDWARE/SOURCES/
/MEMORY/HARDWARE/RUNS/
```

Wenn kein Hardware-Stand existiert, zuerst Minimalstruktur anlegen:

```text
/MEMORY/HARDWARE/INDEX.md
/MEMORY/HARDWARE/INGEST_STATE.yaml
/MEMORY/HARDWARE/MANUFACTURERS/INDEX.md
/MEMORY/HARDWARE/DEVICES/INDEX.md
/MEMORY/HARDWARE/SOURCES/INDEX.md
```

Nicht sofort Massendaten importieren.

## Priorisierte Geräte

Starte mit projektrelevanten Geräten:

```text
1. Steam Deck / Valve
2. Blackview Tab 10 Pro
3. Samsung SM-T580
4. Samsung SM-T585
5. Samsung SM-T235
6. Legion / Arch Linux Workstation
7. SpiderWeb / Debian Server
8. Android-Geräte allgemein
9. Router / OpenWrt-Geräte
10. Laptops / Desktop-Hardware
11. USB-/PCI-/DMI-ID-Daten
12. Herstellerindex erweitern
13. Kompatibilitätsmatrix erweitern
14. Quellenregister vervollständigen
```

## Erster Hardware-Batch

Wenn noch kein Batch existiert:

```text
H1) Hardware-Index prüfen oder anlegen
H2) INGEST_STATE.yaml prüfen oder anlegen
H3) Herstellerstub Valve anlegen
H4) Gerätedraft Steam Deck anlegen
H5) Quellenstub für Valve/Steam Deck anlegen
H6) Gate setzen: Steam Deck ausbauen oder Android-Geräte starten
```

## Sicherheitsregeln Hardware

Keine gefährlichen Aktionen als harmlose Standardlösung speichern:

```text
Bootloader entsperren
Factory Reset
Firmware flashen
BIOS/UEFI flashen
Partitionen löschen
fastboot erase
Odin/Heimdall Flash
Router-Firmware überschreiben
Secure Boot deaktivieren
TPM löschen
RAID neu initialisieren
dd auf Blockgeräte
rm -rf auf Systempfaden
chmod -R 777
```

Riskante Aktionen nur mit klarer Markierung:

```yaml
dangerous_action:
risk_level:
data_loss_possible:
brick_risk:
requires_backup:
requires_user_confirmation:
safer_alternative:
```

# # # # # # # # # # # # # # # # #

# Subagent 004: Governance Cleanup

# # # # # # # # # # # # # # # # #

Dieser Subagent prüft übergreifende Repo-Konsistenz.

Pflichtaufgaben:

```text
1. Prüfen, ob alle aktiven Agenten in /MEMORY/AGENTS/README.md verlinkt sind.
2. Prüfen, ob neue Wissensbereiche in /MEMORY/INDEX.md verlinkt sind.
3. Prüfen, ob neue Quellenarten in /MEMORY/SOURCE_REGISTRY.md existieren.
4. Prüfen, ob /CHANGES.md aktualisierbar ist.
5. Prüfen, ob /UPDATE_PROCESS.md nur bei Prozessänderung geändert werden muss.
6. Prüfen, ob alte Test-/Write-Check-Dateien entfernt werden können.
7. Prüfen, ob Checkpoints den neuesten Stand zeigen.
```

Wenn `CHANGES.md` oder andere Dateien durch Schreibfilter blockiert werden:

```text
- Nicht behaupten, dass sie geändert wurden.
- Blockade im Arbeitsbericht dokumentieren.
- Alternativ eine Run-Notiz unter /MEMORY/RUNS/ oder passendem Domain-RUNS-Verzeichnis anlegen.
```

# # # # # # # #

# Quellenregeln

# # # # # # # #

Quellenpriorität allgemein:

```text
1. Offizielle Projektdokumentation
2. Offizielle Paketdatenbanken / Herstellerseiten
3. Offizielle Manpages / Manuals
4. Offizielle Changelogs / Upgrade-Guides
5. Offizielle Bugtracker
6. Offizielle Standards / Registries
7. Seriöse technische Wikis
8. Community-Quellen nur ergänzend
9. KI-generierte Inhalte niemals als Quelle
```

Für jede Quelle speichern:

```yaml
source_url:
source_title:
source_type:
retrieved_at:
license_or_terms_note:
used_for:
confidence:
last_reviewed:
```

Wenn eine Quelle nicht vollständig gelesen werden kann:

```yaml
crawl_allowed: limited
license_status: UNKNOWN
content_policy: LINK_ONLY
status: REVIEW_REQUIRED
```

# # # # # # # # # #

# Schreibstrategie

# # # # # # # # # #

Arbeite kleinschrittig.

Bevorzugte Commit-Größen:

```text
1 Datei neu
1 Datei aktualisiert
kleiner Quellenstub
kleiner Checkpoint
kleiner Indexeintrag
```

Vermeide große Sammelcommits.

Wenn ein Schreibversuch blockiert wird:

```text
1. Inhalt verkleinern.
2. Riskante Wörter und Befehlsblöcke reduzieren.
3. Nur Metadaten speichern.
4. Alternativ Checkpoint/Run-Notiz schreiben.
5. Blockade im Abschlussbericht nennen.
```

Nicht erzwingen.

Nicht behaupten, eine Datei sei geschrieben, wenn der Schreibzugriff blockiert wurde.

# # # # # # # # # #

# Update-Pflichten

# # # # # # # # # #

Nach jeder Änderung prüfen, ob aktualisiert werden muss:

```text
/CHANGES.md
/MEMORY/INDEX.md
/MEMORY/SOURCE_REGISTRY.md
/MEMORY/AGENTS/README.md
/MEMORY/SOFTWARE/CHECKPOINTS/software-package-research-progress.md
/MEMORY/HARDWARE/INGEST_STATE.yaml
/MEMORY/PHP/CHECKPOINTS/
```

`UPDATE_PROCESS.md` nur ändern, wenn sich der Prozess tatsächlich geändert hat.

Wenn `CHANGES.md` nicht aktualisierbar ist, schreibe eine Run-Notiz mit:

```yaml
changes_update_blocked: true
reason:
affected_files:
commit_shas:
next_action:
```

# # # # # # # # # # # # # #

# Commit-Message-Formate

# # # # # # # # # # # # # #

Software:

```text
feat(software): expand Arch Linux package manager pilot
docs(software): update Arch Linux package manager source bundle
chore(software): update software package research checkpoint
chore(software): remove temporary write-check placeholders
```

PHP:

```text
docs(agents): add PHP error database ingestion directive
feat(memory): add PHP error knowledge batch
docs(memory): update PHP source references
chore(memory): update PHP error checkpoint
```

Hardware:

```text
docs(agents): add device hardware database ingestion directive
feat(memory): add hardware device knowledge batch
docs(memory): update hardware source references
chore(memory): update hardware ingest state
```

Governance:

```text
docs(agents): register active memory agents
docs(memory): update source registry
docs(memory): update memory index
chore(memory): add run status note
```

# # # # # # # # # # # # #

# Arbeitsabschluss-Format

# # # # # # # # # # # # #

Am Ende jedes Agentenlaufs ausgeben:

```md
# Arbeitsbericht

## Gelesene Pflichtdateien

## Erkannter Startstand

## Eingesetzte Subagenten

## Änderungen pro Subagent

### Software

### PHP Errors

### Devices / Hardware

### Governance Cleanup

## Neue Dateien

## Geänderte Dateien

## Gelöschte Dateien

## Commit-SHAs

## Quellenlage

## Blockierte Aktionen

## Review-Punkte

## Neuer Checkpoint

## Gate / Entscheidungsfrage

## Nächste empfohlene Aktion
```

# # # # # # #

# Gate-Regel

# # # # # # #

Arbeite weiter, bis eines dieser Gates erreicht ist:

```text
1. Eine größere Richtungsentscheidung nötig ist.
2. Ein Sicherheitsrisiko durch Reparatur-/Flash-/Force-Aktionen entsteht.
3. Quellenlage widersprüchlich oder unklar ist.
4. Schreibfilter wiederholt blockieren.
5. Ein Domain-Batch abgeschlossen ist.
6. Der nächste Batch aus mehreren gleichwertigen Optionen gewählt werden muss.
```

Dann stoppen und eine klare Entscheidungsfrage stellen.

# # # # # # # # #

# Schlussregel

# # # # # # # # #

Nicht bei Null anfangen.

Der aktuelle bekannte Stand ist:

```text
Software-Agent aktiv.
Software-Index aktiv.
Software-Template vorhanden.
Arch-Linux-Paketmanager-Pilotbatch abgeschlossen.
Batch-Gate erreicht.
Nächste Software-Richtung: A+B+C, danach D, danach E.
PHP Error Database Agent: Stand prüfen, Direktive und Datenstruktur ggf. anlegen, dann Error-Level-Batch starten.
Device & Manufacturer Agent: Stand prüfen, Direktive und Hardware-Struktur ggf. anlegen, dann projektrelevante Geräte priorisieren.
Bei mehreren Tasks: Subagenten beauftragen oder Subtasks simulieren.
```

Arbeite ab diesem Stand weiter.

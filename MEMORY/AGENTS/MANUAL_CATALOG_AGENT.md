# # # # # # # # # # # # # # # # # # #
# DR. DEBUG /MEMORY/ MANUAL_CATALOG_AGENT.md #
# # # # # # # # # # # # # # # # # # #

Version: 1.0.1
Zielpfad: /MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Status: ACTIVE
Geltungsbereich: Dr. Debug /MEMORY/ Handbücher, Manuals, Manpages, Service Manuals, Datasheets, Installationsanleitungen, Recovery-Guides und technische Referenzen

# # # # # #
# Rolle #
# # # # # #

Du bist ein Dr.-Debug-Memory-Agent für Handbücher und technische Dokumentation.

Deine Aufgabe ist es, öffentlich belegbare Handbücher, Manuals, Manpages, Service-Dokumentationen,
Installationsanleitungen, Recovery-Guides, Datenblätter und technische Referenzen sinnvoll in die
Dr.-Debug-/MEMORY/-Struktur zu integrieren.

Du sammelst keine unkontrollierten Rohdaten.
Du speicherst keine urheberrechtlich geschützten Volltexte, sofern keine klare Lizenz oder Erlaubnis vorliegt.
Du erzeugst wartbare, quellenbasierte, deduplizierte und agentenlesbare Manual-Metadaten.

# # # # # # # # # # # # # #
# Repository- und Direktivenregel #
# # # # # # # # # # # # # #

Ziel-Repository:
https://github.com/n-e-o-w-u-l-f/dr.debug-memory

Vor jeder Änderung muss der Agent zuerst folgende Dateien lesen, sofern vorhanden:

/AGENTS.md
/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
/MEMORY/AGENTS/README.md
/MEMORY/SCHEMA.md
/MEMORY/QUALITY_RULES.md
/MEMORY/SOURCE_REGISTRY.md
/MEMORY/INDEX.md
/MEMORY/INDEX/MANUALS/README.md
/CHANGES.md
/UPDATE_PROCESS.md

Wenn diese Manual-Direktive dauerhaft gelten soll, muss sie unter folgendem Pfad gespeichert werden:

/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md

Wenn der Agent keinen GitHub-Schreibzugriff besitzt, muss er stattdessen ausgeben:

1. Zielpfad,
2. vollständigen Dateiinhalt,
3. Änderungszusammenfassung,
4. vorgeschlagene Commit-Message,
5. Hinweise auf betroffene Indexdateien.

Empfohlene Commit-Message:

docs(agents): add manual catalog agent directive

# # # # # # # # # # #
# Grundentscheidung #
# # # # # # # # # # #

Handbücher werden als eigene Canonical-Wissensklasse geführt.

Canonical Manual Content liegt unter:

/MEMORY/MANUALS/

Indexdateien liegen unter:

/MEMORY/INDEX/MANUALS/

Software-, Hardware-, Vendor-, Service- und Error-Code-Dateien dürfen auf Manual-Dateien verweisen,
dürfen deren Inhalte aber nicht vollständig duplizieren.

Keine echte doppelte Speicherung.

Richtig:

/MEMORY/MANUALS/SOFTWARE/CROSS_PLATFORM/GIT/user_manual__2_x__en.md
/MEMORY/INDEX/MANUALS/SOFTWARE.md
/MEMORY/CATALOG/SOFTWARE/CROSS_PLATFORM/VCS/GIT.md verweist auf related_manuals

Falsch:

/MEMORY/CATALOG/SOFTWARE/CROSS_PLATFORM/VCS/GIT_MANUAL.md
/MEMORY/MANUALS/GIT_MANUAL.md
/MEMORY/INDEX/SOFTWARE/GIT/GIT_MANUAL.md

# # # # # # # # # # #
# Sicherheitsregeln #
# # # # # # # # # # #

1. Keine urheberrechtlich geschützten Volltexte speichern, wenn keine klare Lizenz vorliegt.
2. Keine vollständigen Service Manuals, Schaltpläne oder Hersteller-PDFs kopieren, wenn sie nur verlinkt werden dürfen.
3. Keine illegalen Reparatur-, DRM-, Pay-TV-, Cardsharing-, FRP-Bypass-, SIM-Lock-Bypass-,
   iCloud-/Activation-Lock-Bypass-, Malware-, Exploit- oder Account-Umgehungsanleitungen speichern.
4. Erlaubt sind:
   - bibliografische Metadaten,
   - Quellenlinks,
   - Versions-/Revisionshinweise,
   - kurze technische Zusammenfassungen,
   - sichere Diagnosehinweise,
   - legale Recovery- und Reparaturhinweise,
   - Verweise auf relevante Kapitel,
   - öffentliche Manpages und frei lizenzierte Dokumentation.
5. Wenn die Lizenz unklar ist, gilt:
   content_policy: LINK_ONLY oder SUMMARY_ONLY
6. Wenn eine Quelle widersprüchlich oder unsicher ist, gilt:
   status: REVIEW_REQUIRED
7. Roh-PDFs, HTML-Dumps, OCR-Zwischenstände, große JSON-Exports und Crawler-Dateien gehören nicht ins GitHub-Repo.
   Sie gehören nach /.cache/ oder /BUILD/ und müssen per .gitignore ausgeschlossen werden.

# # # # # # # # # #
# Manual-Struktur #
# # # # # # # # # #

Empfohlene Struktur:

/MEMORY/
├── MANUALS/
│   ├── SOFTWARE/
│   │   ├── LINUX/
│   │   ├── MACOS/
│   │   ├── ANDROID/
│   │   ├── WINDOWS/
│   │   ├── DOS/
│   │   ├── FREEDOS/
│   │   └── CROSS_PLATFORM/
│   ├── HARDWARE/
│   │   ├── SMARTPHONES/
│   │   ├── ANDROID_TV/
│   │   ├── LINUX_CAPABLE_DEVICES/
│   │   ├── ROUTERS/
│   │   ├── NAS/
│   │   ├── SBC/
│   │   ├── PRINTERS/
│   │   ├── CAMERAS/
│   │   └── EMBEDDED_DEVICES/
│   ├── SERVICES/
│   │   ├── SYSTEMD/
│   │   ├── SSH/
│   │   ├── NGINX/
│   │   ├── APACHE/
│   │   ├── PHP_FPM/
│   │   ├── MYSQL/
│   │   ├── MARIADB/
│   │   ├── POSTGRESQL/
│   │   └── DOCKER/
│   ├── OPERATING_SYSTEMS/
│   │   ├── LINUX_DISTRIBUTIONS/
│   │   ├── WINDOWS/
│   │   ├── MACOS/
│   │   ├── DOS/
│   │   ├── FREEDOS/
│   │   ├── ANDROID/
│   │   └── IOS/
│   └── VENDORS/
├── INDEX/
│   └── MANUALS/
│       ├── README.md
│       ├── SOFTWARE.md
│       ├── HARDWARE.md
│       ├── SERVICES.md
│       ├── OPERATING_SYSTEMS.md
│       ├── VENDORS.md
│       ├── BY_LANGUAGE.md
│       ├── BY_VERSION.md
│       ├── BY_LICENSE_STATUS.md
│       └── REVIEW_REQUIRED.md
└── TEMPLATES/
    └── MANUAL_ENTRY_TEMPLATE.md

# # # # # # # # # # # #
# Naming Convention #
# # # # # # # # # # # #

Alle Manual-Dateien müssen stabile, lesbare und deduplizierbare Namen verwenden.

Slug-Regel:

1. Dateinamen sind lowercase oder UPPERCASE nur dort, wo die bestehende Struktur es bereits verwendet.
2. Empfohlen für Dateien: lowercase mit underscores.
3. Keine Leerzeichen.
4. Keine Sonderzeichen außer underscore.
5. Keine Versionspunkte im Dateinamen; Punkte werden zu underscores.
6. Sprache immer als ISO-Kürzel:
   - de
   - en
   - fr
   - es
   - it
   - multi
7. Unklare Version:
   - current
   - unknown
   - historical
8. Manual-Dateiname:

<manual_type>__<version_or_scope>__<lang>.md

Beispiele:

official_manual__6_1__en.md
user_manual__current__de.md
service_manual__rev_2__en.md
installation_guide__windows_11__de.md
manpage__section_8__en.md
datasheet__rev_a__en.md
recovery_guide__android_14__en.md

# # # # # # # # # # # # # #
# Canonical Manual-Pfade #
# # # # # # # # # # # # # #

Software-Manual:

/MEMORY/MANUALS/SOFTWARE/<SYSTEM>/<CATEGORY>/<PROGRAM_SLUG>/<MANUAL_TYPE>__<VERSION_OR_SCOPE>__<LANG>.md

Beispiele:

/MEMORY/MANUALS/SOFTWARE/LINUX/PACKAGE_MANAGERS/PACMAN/official_manual__6_1__en.md
/MEMORY/MANUALS/SOFTWARE/CROSS_PLATFORM/VCS/GIT/user_manual__2_x__en.md
/MEMORY/MANUALS/SOFTWARE/WINDOWS/ARCHIVERS/WINZIP/user_guide__current__en.md
/MEMORY/MANUALS/SOFTWARE/FREEDOS/ARCHIVERS/ZIP/package_manual__freedos_1_3__en.md

Hardware-Manual:

/MEMORY/MANUALS/HARDWARE/<DEVICE_CLASS>/<VENDOR>/<MODEL_SLUG>/<MANUAL_TYPE>__<REVISION_OR_VERSION>__<LANG>.md

Beispiele:

/MEMORY/MANUALS/HARDWARE/SMARTPHONES/SAMSUNG/GALAXY_S21_ULTRA/user_manual__sm_g998b__de.md
/MEMORY/MANUALS/HARDWARE/ANDROID_TV/SONY/BRAVIA_X90J/user_manual__2021__de.md
/MEMORY/MANUALS/HARDWARE/LINUX_CAPABLE_DEVICES/SAT_RECEIVERS/DREAMBOX_DM920/user_manual__current__de.md
/MEMORY/MANUALS/HARDWARE/ROUTERS/GL_INET/GL_MT3000/user_manual__v1__en.md

Service-Manual:

/MEMORY/MANUALS/SERVICES/<SERVICE_NAME>/<MANUAL_TYPE>__<VERSION_OR_SCOPE>__<LANG>.md

Beispiele:

/MEMORY/MANUALS/SERVICES/SSHD/admin_guide__openssh_9_x__en.md
/MEMORY/MANUALS/SERVICES/NGINX/admin_guide__current__en.md
/MEMORY/MANUALS/SERVICES/SYSTEMD/manpage__systemctl_1__en.md

Operating-System-Manual:

/MEMORY/MANUALS/OPERATING_SYSTEMS/<OS_FAMILY>/<OS_SLUG>/<MANUAL_TYPE>__<VERSION_OR_SCOPE>__<LANG>.md

Beispiele:

/MEMORY/MANUALS/OPERATING_SYSTEMS/LINUX_DISTRIBUTIONS/ARCH_LINUX/installation_guide__current__en.md
/MEMORY/MANUALS/OPERATING_SYSTEMS/FREEDOS/FREEDOS/user_manual__1_3__en.md
/MEMORY/MANUALS/OPERATING_SYSTEMS/WINDOWS/WINDOWS_11/recovery_guide__current__de.md

Vendor-Manual:

/MEMORY/MANUALS/VENDORS/<VENDOR>/<PRODUCT_OR_FAMILY>/<MANUAL_TYPE>__<VERSION_OR_SCOPE>__<LANG>.md

Beispiele:

/MEMORY/MANUALS/VENDORS/SAMSUNG/GALAXY/user_manual_index__current__de.md
/MEMORY/MANUALS/VENDORS/GL_INET/ROUTERS/support_manual_index__current__en.md

# # # # # # # # #
# Manual-Typen #
# # # # # # # # #

Zulässige manual_type-Werte:

official_manual
user_manual
service_manual
installation_guide
admin_guide
developer_guide
cli_reference
api_reference
datasheet
schematic_reference
recovery_guide
quick_start
package_manual
manpage
wiki_manual
vendor_support_article
troubleshooting_guide
firmware_guide
upgrade_guide
maintenance_guide
repair_guide
safety_notice
release_notes
compatibility_list

# # # # # # # # # # # #
# Canonical Frontmatter #
# # # # # # # # # # # #

Jede Manual-Datei muss folgendes Frontmatter besitzen:

---
id: manual.<domain>.<target_family>.<target_slug>.<manual_slug>
title:
manual_type:
target_type: SOFTWARE | HARDWARE | SERVICE | OPERATING_SYSTEM | VENDOR | CROSS_REFERENCE
target_id:
vendor:
product:
model:
program:
service:
system_family:
category:
version_scope:
hardware_revision:
language:
source_type: PRIMARY_SOURCE | SECONDARY_SOURCE | COMMUNITY_SOURCE | ARCHIVED_SOURCE
license_status: REDISTRIBUTABLE | LINK_ONLY | UNKNOWN | RESTRICTED
content_policy: FULL_TEXT_ALLOWED | EXCERPT_ALLOWED | SUMMARY_ONLY | LINK_ONLY
status: VERIFIED | CANDIDATE | HISTORICAL | SUPERSEDED | REVIEW_REQUIRED
confidence: HIGH | MEDIUM | LOW
first_added:
last_verified:
source_url:
source_archive_url:
checksum:
related_software:
related_devices:
related_services:
related_errors:
related_manuals:
---

# # # # # # # # # #
# Pflichtabschnitte #
# # # # # # # # # #

Jede Manual-Datei muss folgende Abschnitte enthalten:

# # # # # #
# Übersicht #
# # # # # #

Kurzbeschreibung des Handbuchs, Zielobjekts und Nutzens für Dr. Debug.

# # # # # # # # # #
# Zielsystem / Gerät #
# # # # # # # # # #

Betroffene Software, Hardware, Dienst, Betriebssystemfamilie oder Herstellerfamilie.

# # # # # # # # #
# Manual-Typ #
# # # # # # # # #

Art des Dokuments:
user_manual, service_manual, manpage, datasheet, recovery_guide usw.

# # # # # # # # # #
# Version / Revision #
# # # # # # # # # #

Version, Modellnummer, Hardware-Revision, Softwareversion oder Scope.

# # # # # # # # #
# Relevante Kapitel #
# # # # # # # # #

Nur kurze Kapitelhinweise speichern.
Keine langen urheberrechtlich geschützten Volltextauszüge kopieren.

# # # # # # # # #
# Diagnose-Nutzen #
# # # # # # # # #

Beschreiben, wofür das Manual bei Diagnose und Reparatur nützlich ist.

Beispiele:
- Bootfehler
- Installationsfehler
- Recovery-Modus
- Service-Startfehler
- Netzwerkdiagnose
- Firmware-Update
- Paketverwaltung
- Treiberproblem
- Hardware-Revisionserkennung

# # # # # # # # # # #
# Bekannte Fehlerbezüge #
# # # # # # # # # # #

Verweise auf passende Error-Code-Dateien unter:

/MEMORY/ERROR_CODES/

# # # # # # # # # #
# Lizenz / Speicherung #
# # # # # # # # # #

Dokumentieren:

1. Darf Volltext gespeichert werden?
2. Nur Zusammenfassung erlaubt?
3. Nur Link erlaubt?
4. Ist die Quelle archiviert?
5. Ist die Lizenz unbekannt?

# # # # # #
# Quellen #
# # # # # #

Jede Manual-Datei muss mindestens eine Quelle besitzen.

Quellen sollen, wenn möglich, zusätzlich in /MEMORY/SOURCE_REGISTRY.md registriert werden.

# # # # # # # # # # #
# Source Registry Regel #
# # # # # # # # # # #

Quellen dürfen nicht nur als lose URLs gesammelt werden.

Wenn möglich, muss jede Quelle eine source_id erhalten:

Beispiel:

source_id: source.archlinux.wiki
name: ArchWiki
type: PRIMARY_SOURCE
url:
trust_level: HIGH
notes:

Manual-Dateien referenzieren danach bevorzugt diese source_id.

# # # # # # # # # # #
# Verknüpfungsregel #
# # # # # # # # # # #

Bestehende Software-, Hardware-, Service- und Error-Code-Dateien sollen um related_manuals erweitert werden.

Beispiel Software:

related_manuals:
  - manual.software.linux.pacman.official_manual_6_1_en

Beispiel Hardware:

related_manuals:
  - manual.hardware.smartphones.samsung.galaxy_s21_ultra.user_manual_sm_g998b_de

Beispiel Error-Code:

related_manuals:
  - manual.services.sshd.admin_guide_openssh_9_x_en

Manual-Dateien dürfen wiederum auf related_errors, related_software, related_devices und related_services verweisen.

# # # # # # # # # #
# Indexstruktur #
# # # # # # # # # #

Manual-Indexdateien enthalten nur Verweise, Kurzstatus, Sprache, Version, Quelle und Zielobjekt.

Keine echten Manual-Inhalte doppelt in Indexdateien speichern.

/MEMORY/INDEX/MANUALS/README.md
/MEMORY/INDEX/MANUALS/SOFTWARE.md
/MEMORY/INDEX/MANUALS/HARDWARE.md
/MEMORY/INDEX/MANUALS/SERVICES.md
/MEMORY/INDEX/MANUALS/OPERATING_SYSTEMS.md
/MEMORY/INDEX/MANUALS/VENDORS.md
/MEMORY/INDEX/MANUALS/BY_LANGUAGE.md
/MEMORY/INDEX/MANUALS/BY_VERSION.md
/MEMORY/INDEX/MANUALS/BY_LICENSE_STATUS.md
/MEMORY/INDEX/MANUALS/REVIEW_REQUIRED.md

Indexeintrag-Beispiel:

- target_id: software.cross_platform.vcs.git
  manual_id: manual.software.cross_platform.git.user_manual_2_x_en
  path: /MEMORY/MANUALS/SOFTWARE/CROSS_PLATFORM/VCS/GIT/user_manual__2_x__en.md
  language: en
  status: VERIFIED
  content_policy: LINK_ONLY
  last_verified:
  source_type: PRIMARY_SOURCE

# # # # # # # # #
# Batch-Ablauf #
# # # # # # # # #

1. Lade zuerst:
   - /AGENTS.md
   - /MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
   - /MEMORY/SCHEMA.md
   - /MEMORY/QUALITY_RULES.md
   - /MEMORY/SOURCE_REGISTRY.md
   - /MEMORY/INDEX.md
   - /MEMORY/INDEX/MANUALS/README.md, sofern vorhanden

2. Prüfe, ob /MEMORY/MANUALS/ existiert.
   Falls nicht, lege die Struktur an.

3. Prüfe, ob /MEMORY/TEMPLATES/MANUAL_ENTRY_TEMPLATE.md existiert.
   Falls nicht, erstelle es.

4. Arbeite in Batches:
   - maximal 25 Manual-Einträge pro Durchlauf
   - pro Batch nur eine Hauptdomäne:
     SOFTWARE, HARDWARE, SERVICES, OPERATING_SYSTEMS oder VENDORS

5. Recherchiere Quellen nach Priorität:
   - offizielle Herstellerseite
   - offizielle Projektdokumentation
   - Manpages
   - Distribution-Dokumentation
   - offizielle Supportseiten
   - öffentlich belegbare Datenblätter
   - seriöse technische Wikis
   - Community-Quellen nur als SECONDARY_SOURCE oder COMMUNITY_SOURCE

6. Prüfe Lizenz und Speicherbarkeit:
   - REDISTRIBUTABLE
   - LINK_ONLY
   - UNKNOWN
   - RESTRICTED

7. Erstelle pro eindeutigem Manual eine Canonical-Datei.

8. Aktualisiere passende Zielobjekte:
   - related_manuals in Software-Dateien
   - related_manuals in Hardware-Dateien
   - related_manuals in Service-Dateien
   - related_manuals in Error-Code-Dateien

9. Aktualisiere:
   - /MEMORY/INDEX/MANUALS/
   - /MEMORY/SOURCE_REGISTRY.md
   - /MEMORY/STATE/CRAWL_STATUS.md
   - /MEMORY/STATE/REVIEW_QUEUE.md bei unsicheren Einträgen
   - /CHANGES.md

10. Führe Validierung aus.

# # # # # # #
# Validierung #
# # # # # # #

Nach jedem Agentenlauf prüfen:

1. Jede neue Manual-Datei besitzt Frontmatter.
2. Jede neue Manual-Datei besitzt mindestens eine Quelle.
3. Jede neue Manual-Datei besitzt license_status und content_policy.
4. Keine urheberrechtlich geschützten Volltexte wurden unerlaubt gespeichert.
5. Keine illegalen Bypass-, Exploit-, DRM-, FRP-, SIM-Lock-, iCloud- oder Account-Umgehungsinhalte wurden gespeichert.
6. Jeder Manual-Indexlink zeigt auf eine existierende Datei.
7. related_manuals-Verweise zeigen auf existierende Manual-Dateien.
8. Unklare Quellen oder Lizenzen stehen in /MEMORY/STATE/REVIEW_QUEUE.md.
9. /MEMORY/SOURCE_REGISTRY.md wurde bei neuen Quellen aktualisiert.
10. /CHANGES.md wurde aktualisiert.
11. Keine echten doppelten Manual-Dateien wurden erzeugt.
12. Alte oder ersetzte Manuals wurden als SUPERSEDED markiert, nicht kommentarlos gelöscht.

# # # # # # # # # # #
# .gitignore-Regel #
# # # # # # # # # # #

Folgende Dateien und Ordner dürfen nicht ins GitHub-Repo:

.cache/
BUILD/
build/
dist/
tmp/
*.tmp
*.bak
*.log
raw-html/
raw-json/
raw-pdf/
ocr-output/
crawler-output/
downloaded-manuals/
node_modules/
__pycache__/
.DS_Store
Thumbs.db

Kuratiertes Markdown unter /MEMORY/MANUALS/ darf ins Repository.
Rohdaten und Volltextkopien nur, wenn Lizenz und content_policy dies eindeutig erlauben.

# # # # # # # # # #
# Commit-Format #
# # # # # # # # # #

Empfohlene Commit-Messages:

feat(memory): add manual catalog structure
feat(memory): add software manual batch <category>
feat(memory): add hardware manual batch <device_class>
feat(memory): add service manual references for <service>
chore(memory): update manual indexes
chore(memory): update source registry for manuals
docs(agents): add manual catalog agent directive
docs(memory): update manual template and validation rules

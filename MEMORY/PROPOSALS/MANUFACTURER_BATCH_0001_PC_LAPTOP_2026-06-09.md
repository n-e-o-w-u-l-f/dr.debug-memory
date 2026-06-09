# # # # # # # # # # # # # # # # # # # # # # # # # #
# MANUFACTURER BATCH 0001: PC LAPTOP 2026-06-09 #
# # # # # # # # # # # # # # # # # # # # # # # # # #

Proposal-ID: MP-20260609-manufacturer-batch-0001-pc-laptop
Status: PROPOSED
Agent: DR.DEBUG MANUFACTURER CRAWL AGENT
Directive: /MEMORY/AGENTS/MANUFACTURER_CRAWL_AGENT.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Last-Updated: 2026-06-09

# # # # # # # #
# Zweck #
# # # # # # # #

Dieser Vorschlag definiert den ersten Hersteller-Batch fuer die Dr.Debug-/MEMORY/-Herstellerrecherche.

Der Batch bereitet Herstellerquellen fuer PC-, Laptop-, Workstation- und Enterprise-Client-Systeme vor, ohne globale Vollerfassung zu behaupten.

# # # # # # # # #
# Beschluss #
# # # # # # # # #

User-Entscheidung vom 2026-06-09:

```text
1. BATCH-0001 nach Consumer / Business / Workstation trennen.
2. Mit Dell als erstem Hersteller starten.
3. Apple aus BATCH-0001 herausnehmen und als eigenen Plattform-Batch planen.
4. Herstellerliste erweitern.
```

# # # # # # # # #
# Batch #
# # # # # # # # #

Urspruengliche Batch-ID:

```text
BATCH-0001_PC_LAPTOP
```

Aktive Unterteilung:

```text
BATCH-0001A_PC_LAPTOP_CONSUMER
BATCH-0001B_PC_LAPTOP_BUSINESS
BATCH-0001C_PC_WORKSTATION
BATCH-0001D_PC_LINUX_FOCUSED
BATCH-0001E_PC_MINI_SFF_SPECIALTY
```

Scope:

```text
PC, Laptop, Workstation, Business-Client, Consumer-Client, Enterprise-Client, Linux-focused vendors, Mini-PC/SFF vendors and specialty mobile PCs.
```

Nicht im Scope:

```text
- Apple Mac / macOS Plattform-Batch
- kompletter Smartphone-Batch
- kompletter Printer-Batch
- kompletter Router-Batch
- kompletter NAS-Batch
- kompletter Server-Hardware-Batch
- Firmware-Binary-Spiegelung
- Treiber-Binary-Spiegelung
- vollständige Webseitenkopien
```

# # # # # # # # # # # # # # # # #
# BATCH-0001A: Consumer PC Laptop #
# # # # # # # # # # # # # # # # #

Startliste:

```text
Dell Inspiron
Dell XPS
HP Pavilion
HP Envy
HP Spectre
Lenovo IdeaPad
Lenovo Yoga
Acer Aspire
Acer Swift
ASUS Zenbook
ASUS Vivobook
MSI Modern
MSI Prestige
Samsung Galaxy Book
LG Gram
Huawei MateBook
Honor MagicBook
Xiaomi Book
Dynabook Satellite
```

Prioritaet:

```text
1. Dell
2. HP
3. Lenovo
4. ASUS
5. Acer
```

# # # # # # # # # # # # # # # #
# BATCH-0001B: Business Client #
# # # # # # # # # # # # # # # #

Startliste:

```text
Dell Latitude
Dell Precision Mobile Entry
HP EliteBook
HP ProBook
HP ZBook Entry
Lenovo ThinkPad
Lenovo ThinkBook
Acer TravelMate
ASUS ExpertBook
Microsoft Surface for Business
Panasonic Toughbook
Dynabook Tecra
Dynabook Portégé
Fujitsu Lifebook
Fujitsu Celsius Mobile
LG Gram Business
```

Prioritaet:

```text
1. Dell Latitude
2. HP EliteBook / ProBook
3. Lenovo ThinkPad
4. Microsoft Surface for Business
5. Panasonic Toughbook
```

# # # # # # # # # # # # # # #
# BATCH-0001C: Workstation #
# # # # # # # # # # # # # # #

Startliste:

```text
Dell Precision
HP ZBook
HP Z Desktop Workstation
Lenovo ThinkPad P
Lenovo ThinkStation
ASUS ProArt
MSI CreatorPro
Gigabyte AERO / AORUS Creator
Fujitsu Celsius
BOXX Technologies
Puget Systems
```

Prioritaet:

```text
1. Dell Precision
2. HP ZBook
3. Lenovo ThinkPad P
4. ASUS ProArt
5. BOXX / Puget Systems als Spezialfaelle
```

# # # # # # # # # # # # # # # #
# BATCH-0001D: Linux-Focused #
# # # # # # # # # # # # # # # #

Startliste:

```text
Framework
Tuxedo Computers
System76
Star Labs
Slimbook
Schenker / XMG
NovaCustom
Entroware
Juno Computers
Laptop with Linux
```

Prioritaet:

```text
1. Framework
2. Tuxedo Computers
3. System76
4. Star Labs
5. Slimbook
```

# # # # # # # # # # # # # # # # # #
# BATCH-0001E: Mini SFF Specialty #
# # # # # # # # # # # # # # # # # #

Startliste:

```text
Intel NUC Legacy
ASUS NUC
MSI Cubi
Gigabyte BRIX
Zotac ZBOX
Minisforum
Beelink
Geekom
GMKtec
Simply NUC
ASRock Industrial
Shuttle
```

Prioritaet:

```text
1. ASUS NUC / Intel NUC Legacy
2. Minisforum
3. Beelink
4. Gigabyte BRIX
5. Zotac ZBOX
```

# # # # # # # # # # # # #
# Apple-Auslagerung #
# # # # # # # # # # # # #

Apple wird aus `BATCH-0001_PC_LAPTOP` herausgenommen.

Neuer separater Vorschlag:

```text
/MEMORY/PROPOSALS/MANUFACTURER_BATCH_0002_APPLE_PLATFORM_2026-06-09.md
```

Begruendung:

```text
Apple benoetigt eine eigene Plattformlogik fuer Mac, macOS, Apple Silicon, Intel-Mac-Historie, Recovery, Serviceprogramme, Apple Support, Apple Security Updates, Modell-Identifier, Board-Identifier und EOL-/Support-Historie.
```

# # # # # # # # # # # # #
# Quellenarten je Hersteller #
# # # # # # # # # # # # #

Pro Hersteller sollen gesucht und klassifiziert werden:

```text
- offizielle Support-Startseite
- offizielle Knowledge Base
- offizielle Treiber- und Firmware-Metadaten
- offizielle Release Notes
- offizielle Security-Advisories
- offizielle Service- oder Wartungsdokumentation, sofern legal oeffentlich nutzbar
- offizielle EOL-/EOS-Hinweise
- offizielle Modell-/Produktkennungshilfen
- offizielle BIOS-/UEFI-Hinweise
- offizielle Recovery- und Diagnose-Hinweise
- historische Support-Migrationen
```

# # # # # # # # # # # # #
# Gepruefte Startquellen #
# # # # # # # # # # # # #

Erste manuelle Quellenpruefung fuer Batch-Planung:

```text
Dell Support Home
- https://www.dell.com/support/home
- sichtbare Bereiche: Support Library, Drivers & Downloads, Manuals & Documentation, PC Diagnostics, Self-Repair & Parts.

Lenovo Support
- https://support.lenovo.com/
- sichtbare Bereiche: PC, Data Center, Mobile, Smart, Service Parts, Drivers & Software, Documentation Center, Warranty Lookup, Parts Lookup, Repair Status Check, Product Specifications.

Apple Mac Support
- https://support.apple.com/mac
- sichtbare Bereiche: Mac Support, macOS upgrade/update, Recovery, Time Machine backup, Service and Repair, Apple Service Programs.
```

Hinweis:

```text
Dies ist nur eine Vorpruefung fuer die Batch-Planung. Sie ersetzt keinen vollstaendigen Hersteller-Crawl und erzeugt noch keine kanonischen Herstellerprofile.
```

# # # # # # # # # # # # #
# Zielbereiche im Repository #
# # # # # # # # # # # # #

Primaere Zielbereiche:

```text
/MEMORY/MANUFACTURERS/
/MEMORY/SOURCES/
/MEMORY/FIRMWARE/
/MEMORY/SECURITY/
/MEMORY/ALIASES/
/MEMORY/DEVICE_IDENTIFIERS/
/MEMORY/LIFECYCLE/
/MEMORY/DEPENDENCIES/
/MEMORY/INDEX/
/MEMORY/PROPOSALS/
/MEMORY/QUARANTINE/
```

# # # # # # # # # # #
# Pflicht-Gates #
# # # # # # # # # # #

Vor jedem Hersteller:

```text
1. /AGENTS.md lesen.
2. /MEMORY/AGENTS/MANUFACTURER_CRAWL_AGENT.md lesen.
3. /MEMORY/SOURCE_REGISTRY.md lesen.
4. /MEMORY/QUALITY_RULES.md lesen.
5. Quelle suchen.
6. Crawl-Gate pruefen.
7. Quelle klassifizieren.
8. Keine Volltexte oder Binaries speichern.
9. Nur Metadaten, kurze technische Zusammenfassungen und Links speichern.
10. Deduplizierung gegen vorhandene MEMORY-Dateien pruefen.
11. Review-Punkte dokumentieren.
12. CHANGES.md aktualisieren.
```

# # # # # # # # # # # # #
# Erste Datenprodukte #
# # # # # # # # # # # # #

Der erste Ausfuehrungslauf soll maximal erzeugen:

```text
- Herstellerprofil je Hersteller
- Quellenregistereintrag je offizieller Hauptquelle
- Source-Trust-Eintrag je Domain
- Alias-Notizen nur bei belegter Hersteller- oder Markenhistorie
- Device-Identifier-Notizen nur bei oeffentlich belegten Identifier-Typen
- Firmware-Metadaten nur als Versionshinweis, keine Datei-Downloads
- Security-Advisory-Verweise nur als Metadaten
- EOL/EOS-Verweise nur mit Quelle
```

# # # # # # # # # # # # #
# Abbruchbedingungen #
# # # # # # # # # # # # #

Abbrechen oder in Quarantaene verschieben, wenn:

```text
- Quelle Login verlangt
- Quelle Nutzungsrechte unklar macht
- Quelle nur ueber Download-Binary verwertbar ist
- Quelle widerspruechlich ist
- Modell- oder Firmware-Kontext unklar ist
- Quelle personenbezogene oder kundenspezifische Daten enthaelt
- kein kanonischer Zielpfad nach Schema bestimmbar ist
```

# # # # # # # # # # #
# Review-Punkte #
# # # # # # # # # # #

```text
- Soll Microsoft Surface in Business bleiben oder spaeter als eigener Microsoft-Platform-Batch gefuehrt werden?
- Soll Intel NUC Legacy mit ASUS NUC zusammengefuehrt oder historisch getrennt werden?
- Soll Schenker / XMG als Alias-Fall in /MEMORY/ALIASES/ vorbereitet werden?
- Welche regionalen Hersteller sollen in BATCH-0001D priorisiert werden?
- Sollen deutsche und englische Supportquellen getrennt indexiert werden?
```

# # # # # # # # # # # #
# Empfohlener Start #
# # # # # # # # # # # #

Empfohlene erste Reihenfolge:

```text
1. Dell als Gesamt-Herstellerprofil
2. Dell Support-Quellenregister
3. Dell Latitude als Business-Pilot
4. Dell Precision als Workstation-Pilot
5. Dell XPS / Inspiron als Consumer-Pilot
```

Begruendung:

```text
Dell hat klar sichtbare oeffentliche Support-, Treiber-, Dokumentations-, Diagnose- und Self-Repair-Bereiche und eignet sich deshalb als erster Testfall fuer das Manufacturer-Crawl-Schema.
```

# # # # # # # # # # # #
# Commit-Vorschlag #
# # # # # # # # # # # #

```text
docs(memory): refine pc laptop manufacturer batch
```

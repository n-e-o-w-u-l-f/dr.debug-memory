# # # # # # # # # # # # # # # # # # # # # # # # # #
# MANUFACTURER BATCH 0001: PC LAPTOP 2026-06-09 #
# # # # # # # # # # # # # # # # # # # # # # # # # #

Proposal-ID: MP-20260609-manufacturer-batch-0001-pc-laptop
Status: PROPOSED
Agent: DR.DEBUG MANUFACTURER CRAWL AGENT
Directive: /MEMORY/AGENTS/MANUFACTURER_CRAWL_AGENT.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory

# # # # # # # #
# Zweck #
# # # # # # # #

Dieser Vorschlag definiert den ersten Hersteller-Batch fuer die Dr.Debug-/MEMORY/-Herstellerrecherche.

Der Batch soll Herstellerquellen fuer PC-, Laptop-, Workstation- und Enterprise-Client-Systeme vorbereiten, aber noch keine Vollerfassung behaupten.

# # # # # # # # #
# Batch #
# # # # # # # # #

Batch-ID:

```text
BATCH-0001_PC_LAPTOP
```

Scope:

```text
PC, Laptop, Workstation, Business-Client, Consumer-Client, Enterprise-Client
```

Nicht im Scope:

```text
- kompletter Smartphone-Batch
- kompletter Printer-Batch
- kompletter Router-Batch
- kompletter NAS-Batch
- kompletter Server-Hardware-Batch
- Firmware-Binary-Spiegelung
- Treiber-Binary-Spiegelung
- vollständige Webseitenkopien
```

# # # # # # # # # # # # #
# Hersteller-Startliste #
# # # # # # # # # # # # #

Startliste fuer den ersten kuratierten Batch:

```text
Dell
HP
Lenovo
Acer
ASUS
MSI
Gigabyte
Framework
Tuxedo Computers
System76
Apple
Microsoft Surface
Panasonic Toughbook
Fujitsu
Dynabook
```

Regel:

```text
Diese Liste ist ein Start-Batch, keine globale Vollstaendigkeitserklaerung.
Jeder Hersteller muss vor Integration einzeln quellenbasiert geprueft werden.
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
- Soll BATCH-0001 nach Consumer/Business/Workstation getrennt werden?
- Soll Apple im PC-Laptop-Batch bleiben oder in einen eigenen Plattform-Batch verschoben werden?
- Soll Microsoft Surface als Herstellergruppe oder Produktlinie gefuehrt werden?
- Welche Hersteller sollen zuerst verarbeitet werden?
- Sollen deutsche und englische Supportquellen getrennt indexiert werden?
```

# # # # # # # # # # # #
# Empfohlener Start #
# # # # # # # # # # # #

Empfohlene erste Reihenfolge:

```text
1. Dell
2. HP
3. Lenovo
4. ASUS
5. Acer
```

Begruendung:

```text
Diese Hersteller haben breite PC-/Laptop-Abdeckung, viele oeffentliche Support- und Treiberbereiche und sind fuer Diagnosefaelle besonders wahrscheinlich relevant.
```

# # # # # # # # # # # #
# Commit-Vorschlag #
# # # # # # # # # # # #

```text
docs(memory): add first manufacturer batch plan
```

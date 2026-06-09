# # # # # # # # # # # # # # # # # # # # # # #
# MANUFACTURER BATCH 0002: APPLE PLATFORM #
# # # # # # # # # # # # # # # # # # # # # # #

Proposal-ID: MP-20260609-manufacturer-batch-0002-apple-platform
Status: PROPOSED
Agent: DR.DEBUG MANUFACTURER CRAWL AGENT
Directive: /MEMORY/AGENTS/MANUFACTURER_CRAWL_AGENT.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Created: 2026-06-09

# # # # # # # #
# Zweck #
# # # # # # # #

Dieser Vorschlag lagert Apple aus `BATCH-0001_PC_LAPTOP` aus und plant Apple als eigene Plattform- und Herstellerfamilie.

# # # # # # # # #
# Batch #
# # # # # # # # #

Batch-ID:

```text
BATCH-0002_APPLE_PLATFORM
```

Scope:

```text
Apple Mac, macOS, Apple Silicon, Intel Mac, MacBook, iMac, Mac mini, Mac Studio, Mac Pro, Apple Service Programs, Apple Support, Apple Security Updates, Recovery, Time Machine, Modell-Identifier, Board-Identifier, EOL-/Support-Historie.
```

Nicht im Scope:

```text
- iPhone
- iPad
- Apple Watch
- Apple TV
- HomePod
- App Store App-Katalog
- Account-, Activation- oder Lock-Umgehung
- nicht oeffentliche Service-Unterlagen
```

# # # # # # # # # # # # #
# Unterteilung #
# # # # # # # # # # # # #

```text
BATCH-0002A_APPLE_MACBOOK
BATCH-0002B_APPLE_DESKTOP_MAC
BATCH-0002C_APPLE_MACOS_RECOVERY
BATCH-0002D_APPLE_SECURITY_UPDATES
BATCH-0002E_APPLE_SERVICE_PROGRAMS
BATCH-0002F_APPLE_MODEL_IDENTIFIERS
BATCH-0002G_APPLE_INTEL_TO_APPLE_SILICON_HISTORY
```

# # # # # # # # # # # # #
# Startquellen #
# # # # # # # # # # # # #

Erste sichtbare offizielle Startquelle:

```text
Apple Mac Support
https://support.apple.com/mac
```

Sichtbare Bereiche fuer die Planung:

```text
- Mac Support
- macOS upgrade/update
- macOS Recovery
- Time Machine backup
- Service and Repair
- Apple Service Programs
```

Hinweis:

```text
Dies ist nur eine Startquellen-Notiz. Vor kanonischer Integration muss jede konkrete Quelle separat gelesen, klassifiziert und gegen Nutzungs- und Lizenzkontext geprueft werden.
```

# # # # # # # # # # # # #
# Zielbereiche im Repository #
# # # # # # # # # # # # #

```text
/MEMORY/MANUFACTURERS/APPLE/
/MEMORY/SOURCES/APPLE/
/MEMORY/SECURITY/APPLE/
/MEMORY/FIRMWARE/APPLE/
/MEMORY/ALIASES/APPLE/
/MEMORY/DEVICE_IDENTIFIERS/APPLE/
/MEMORY/LIFECYCLE/APPLE/
/MEMORY/INDEX/APPLE/
/MEMORY/PROPOSALS/
/MEMORY/QUARANTINE/
```

# # # # # # # # # # #
# Pflicht-Gates #
# # # # # # # # # # #

Vor Apple-Integration:

```text
1. /AGENTS.md lesen.
2. /MEMORY/AGENTS/MANUFACTURER_CRAWL_AGENT.md lesen.
3. /MEMORY/SOURCE_REGISTRY.md lesen.
4. /MEMORY/QUALITY_RULES.md lesen.
5. Apple-Quelle einzeln oeffnen und klassifizieren.
6. Keine geschuetzten Volltexte speichern.
7. Keine nicht-oeffentlichen Service-Unterlagen speichern.
8. Keine Account-, Sperr-, Aktivierungs- oder Schutzumgehung dokumentieren.
9. Nur Metadaten, Links, kurze technische Zusammenfassungen und sichere Diagnosepfade speichern.
10. Deduplizierung gegen bestehende Apple-/macOS-/Mac-Eintraege pruefen.
```

# # # # # # # # # # # # #
# Erste Datenprodukte #
# # # # # # # # # # # # #

```text
- Apple Herstellerprofil
- Apple Support Quellenregister
- Apple Source-Trust-Eintrag
- Mac Modell-Identifier-Registry
- Apple Silicon / Intel Mac Historie
- macOS Recovery Quellenverweise
- Apple Security Update Quellenverweise
- Apple Service Program Quellenverweise
- EOL-/Support-Historie nur mit offizieller Quelle
```

# # # # # # # # # # # # #
# Abbruchbedingungen #
# # # # # # # # # # # # #

Abbrechen oder in Quarantaene verschieben, wenn:

```text
- Quelle nicht oeffentlich ist
- Quelle geschuetzten Volltext enthaelt
- Quelle Konto- oder Aktivierungsumgehung betrifft
- Modell-Identifier nicht eindeutig ist
- macOS-Version oder Hardware-Generation unklar ist
- kein kanonischer Zielpfad nach Schema bestimmbar ist
```

# # # # # # # # # # #
# Review-Punkte #
# # # # # # # # # # #

```text
- Soll iPadOS spaeter eigener Batch werden?
- Soll Apple Security als eigener Security-Batch gefuehrt werden?
- Soll Apple Silicon Historie in Lifecycle oder Manufacturer History kanonisch liegen?
- Sollen Mac Modell-Identifier in /MEMORY/DEVICE_IDENTIFIERS/APPLE/ kanonisch werden?
```

# # # # # # # # # # # #
# Commit-Vorschlag #
# # # # # # # # # # # #

```text
docs(memory): add apple platform batch plan
```

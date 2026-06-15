# # # # # # # # # # # # # # # #
# DR. DEBUG SOURCE_REGISTRY.md #
# # # # # # # # # # # # # # # #

Version: 0.0.2
Zielpfad: /MEMORY/SOURCE_REGISTRY.md
Status: ACTIVE
Scope: Source registry for Dr. Debug memory entries

# # # # # # #
# Zweck #
# # # # # # #

Dieses Dokument definiert die verbindlichen Quellenklassen fuer die Dr.-Debug-/MEMORY/-Datenbank.

Jeder Error-Code, jedes Playbook, jede Case-Akte, jeder technische Quellenverweis und jeder MEMORY_PROPOSAL soll Quellen anhand dieses Schemas klassifizieren.

# # # # # # # # # # #
# Quellenklassen #
# # # # # # # # # # #

## SOURCE_CLASS_A_PRIMARY

Primaerquellen mit hoechster Beweiskraft:

```text
Herstellerdokumentation
offizielle Projektdokumentation
Manpages
RFCs
offizielle Sicherheitsmeldungen
offizielle Release Notes
offizielle Service Manuals
offizielle Datasheets
```

## SOURCE_CLASS_B_PROJECT

Projektnahe oder distributionsnahe Quellen:

```text
Distribution-Wikis
Projekt-Wikis
offizielle Paketdatenbanken
offizielle Repositories
Maintainer-Dokumentation
```

## SOURCE_CLASS_C_TRACKER

Technische Diskussionen mit nachvollziehbarem Kontext:

```text
GitHub Issues
GitLab Issues
Maintainer-Kommentare
offizielle Foren
Bugtracker
Mailinglisten mit Maintainer-Beteiligung
```

## SOURCE_CLASS_D_VALIDATED_CASE

Reproduzierte oder user-validierte Faelle:

```text
redigierte Dr.-Debug-Case-Akten
lokale Tests
Lab-Umgebungen
User-validierte Fixes
Vorher/Nachher-Validierung
```

## SOURCE_CLASS_E_COMMUNITY

Community-Wissen mit brauchbarem, aber begrenztem Beweiswert:

```text
Fachforen
Stack Overflow
Reddit
Community-Wikis
Diskussionsbeitraege mit identischem Fehlerbild
```

## SOURCE_CLASS_F_WEAK

Schwache Zusatzquellen:

```text
Blogs
Videos
nicht verifizierte Einzelberichte
Sekundaerquellen
KI-generierte Zusammenfassungen ohne Primaerquelle
```

## SOURCE_CLASS_REJECTED

Nicht nutzbare Quellen:

```text
unlesbare Quellen
Quellen ohne nachvollziehbaren Ursprung
Quellen mit falschem Versionskontext
Quellen mit gefaehrlicher oder illegaler Anleitung
Quellen, die dem beobachteten Fehlerbild widersprechen
```

# # # # # # # # # # #
# Source Types #
# # # # # # # # # # #

Erlaubte source_type-Werte:

```text
PRIMARY_SOURCE
OFFICIAL_DOCS
OFFICIAL_PACKAGE_DATABASE
OFFICIAL_REPOSITORY
OFFICIAL_ISSUE_TRACKER
VENDOR_SUPPORT
OS_DOCUMENTATION
DISTRIBUTION_WIKI
MAINTAINER_COMMENT
COMMUNITY_SOURCE
SECONDARY_SOURCE
HISTORICAL_SOURCE
VALIDATED_CASE
TECHNICAL_REFERENCE
TECHNICAL_MANUAL_REFERENCE
MANPAGE_REFERENCE
ERROR_CODE_REFERENCE
DEVICE_REFERENCE
SOFTWARE_REFERENCE
UNSAFE_SOURCE
REJECTED_SOURCE
```

# # # # # # # # # # # #
# Registry Fields #
# # # # # # # # # # # #

Jeder Quellenverweis soll enthalten:

```text
source_id
title
url
source_class
source_type
scope
systems
versions
retrieved_or_checked_at
claim_supported
limitations
crawl_allowed
license_or_usage_notes
```

# # # # # # # # # # #
# Bewertungsregeln #
# # # # # # # # # # #

```text
A hat hoechste Prioritaet.
Mehrere unabhaengige Quellen sind besser als eine einzelne Quelle.
F darf niemals allein Grundlage fuer STATUS_CONFIRMED sein.
User-Erfolg ersetzt keine Primaerquelle, kann aber STATUS_USER_VALIDATED begruenden.
Recherche ist kein lokaler Test.
Ein lokaler Test ist keine allgemeine Herstellerbestaetigung.
Veraltete Quellen muessen mit Versionsgrenzen markiert werden.
```

# # # # # # # # # #
# Statusbezug #
# # # # # # # # # #

```text
STATUS_RESEARCH_REQUIRED
Quellen fehlen oder sind unzureichend.

STATUS_RESEARCHED
Mindestens eine gelesene und klassifizierte Quelle existiert.

STATUS_USER_VALIDATED
Ein User bestaetigt den Fix im konkreten Kontext.

STATUS_REPAIR_TESTED
Vorher-Zustand, Massnahme, Nachher-Zustand und Validierung sind dokumentiert.

STATUS_CONFIRMED
Quellenlage, Validierung, Geltungsbereich und Risiko sind ausreichend stabil dokumentiert.
```

# # # # # # # #
# Finale Regel #
# # # # # # # #

Keine Behauptung ohne nachvollziehbare Quelle.
Keine Quelle ohne Klassifizierung.
Keine Status-Hochstufung ohne ausreichende Belege.

# # # # # # # # # # # # # # # #
# Device Source Registrations #
# # # # # # # # # # # # # # # #

## 2026-06-15 ASUS motherboard starter sources

source_id: asus-device-tuf-gaming-z890-pro-wifi-20260615
title: ASUS TUF GAMING Z890-PRO WIFI official product page
url: https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z890-pro-wifi/
source_class: SOURCE_CLASS_A_PRIMARY
source_type: DEVICE_REFERENCE
scope: MEMORY/HARDWARE/DEVICES ASUS motherboard verified entry evidence
systems: ASUS TUF GAMING Z890-PRO WIFI
versions: not version-specific
retrieved_or_checked_at: 2026-06-15
claim_supported: official product identity and product-family evidence for the device entry
limitations: release year was not imported in the starter round
crawl_allowed: not recorded in memory entry
license_or_usage_notes: facts and URLs only; no copied vendor text

source_id: asus-device-prime-z890-p-wifi-20260615
title: ASUS PRIME Z890-P WIFI official product page
url: https://www.asus.com/motherboards-components/motherboards/prime/prime-z890-p-wifi/
source_class: SOURCE_CLASS_A_PRIMARY
source_type: DEVICE_REFERENCE
scope: MEMORY/HARDWARE/DEVICES ASUS motherboard verified entry evidence
systems: ASUS PRIME Z890-P WIFI
versions: not version-specific
retrieved_or_checked_at: 2026-06-15
claim_supported: official product identity and product-family evidence for the device entry
limitations: release year was not imported in the starter round
crawl_allowed: not recorded in memory entry
license_or_usage_notes: facts and URLs only; no copied vendor text

source_id: asus-device-pro-ws-wrx90e-sage-se-20260615
title: ASUS Pro WS WRX90E-SAGE SE official product page
url: https://www.asus.com/motherboards-components/motherboards/workstation/pro-ws-wrx90e-sage-se/
source_class: SOURCE_CLASS_A_PRIMARY
source_type: DEVICE_REFERENCE
scope: MEMORY/HARDWARE/DEVICES ASUS motherboard verified entry evidence
systems: ASUS Pro WS WRX90E-SAGE SE
versions: not version-specific
retrieved_or_checked_at: 2026-06-15
claim_supported: official product identity and product-family evidence for the device entry
limitations: release year was not imported in the starter round
crawl_allowed: not recorded in memory entry
license_or_usage_notes: facts and URLs only; no copied vendor text

source_id: asus-device-ex-b860m-v5-20260615
title: ASUS EX-B860M-V5 official product page
url: https://www.asus.com/motherboards-components/motherboards/expedition/ex-b860m-v5/
source_class: SOURCE_CLASS_A_PRIMARY
source_type: DEVICE_REFERENCE
scope: MEMORY/HARDWARE/DEVICES ASUS motherboard verified entry evidence
systems: ASUS EX-B860M-V5
versions: not version-specific
retrieved_or_checked_at: 2026-06-15
claim_supported: official product identity and product-family evidence for the device entry
limitations: release year was not imported in the starter round
crawl_allowed: not recorded in memory entry
license_or_usage_notes: facts and URLs only; no copied vendor text

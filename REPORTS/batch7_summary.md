# Dr.Debug-MEMORY Research Batch 7

Datum: 2026-06-18
Status: PROPOSAL_ONLY_REQUIRES_PRIVATE_REVIEW

## Kurzbefund

Batch 7 erweitert Batch 6 um neue technische Recherchebereiche:

- IANA Service-Port-Diagnoseslots: Ports 2500-9999 fuer TCP/UDP.
- IANA IP Protocol Number Slots 0-255 mit reviewed Seeds fuer zentrale Protokolle.
- DNS RCODE/RRType Seeds.
- ICMPv4/ICMPv6 Type Seeds.
- DHCP/DHCPv6 Option Seeds.
- TLS Alert Seeds.
- Special-purpose IPv4/IPv6 Address Seeds.
- Linux Netzwerkkomponenten-Diagnose.
- AOSP Android-Version/API-Mapping bis Android 17 / API 37 nach aktueller AOSP-Dokumentation.
- Samsung Open Source beobachtete Modell/Build/Source-Paket-Beispiele.
- TWRP OEM-Index aus offizieller Devices-Seite.
- LVFS/fwupd Firmware-Metadaten-Erweiterung.

## Wichtige Sicherheitsnotiz

Diese Daten sind Proposal-Daten. Sie duerfen nicht ungeprueft als finale Dr.Debug-MEMORY-Wahrheit gelten.
Portnummern, Protokollnummern, DNS-Codes, Firmware- und Build-Namen muessen im privaten Dr.Debug-MEMORY-Workflow dedupliziert, validiert und statusgepflegt werden.

## Warum Ports als Slots?

IANA weist darauf hin, dass eine Portzuweisung keinen guten Traffic und keinen tatsaechlich laufenden Dienst beweist.
Dr.Debug soll deshalb Ports als Diagnose-Identifier nutzen, nicht als Beweis.

## Rechte

ZIP-Erzeugung setzt:
- Dateien: 0644
- Verzeichnisse: 0755
- SCRIPTS/*.sh und SCRIPTS/*.py: 0755

## Neue Dateien

- MEMORY/SOURCES/source_registry_additions_batch7.jsonl
- MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch7_2500_9999.jsonl
- MEMORY/NETWORKING/iana_ip_protocol_numbers_batch7.jsonl
- MEMORY/NETWORKING/dns_parameters_seed_batch7.jsonl
- MEMORY/NETWORKING/icmp_parameters_seed_batch7.jsonl
- MEMORY/NETWORKING/dhcp_parameters_seed_batch7.jsonl
- MEMORY/NETWORKING/tls_parameters_seed_batch7.jsonl
- MEMORY/NETWORKING/special_purpose_address_space_seed_batch7.jsonl
- MEMORY/NETWORKING/linux_network_component_diagnostics_batch7.jsonl
- MEMORY/ANDROID/aosp_version_api_seed_batch7.jsonl
- MEMORY/ANDROID/samsung_open_source_observed_seed_batch7.jsonl
- MEMORY/ANDROID/twrp_oem_index_seed_batch7.jsonl
- MEMORY/FIRMWARE/lvfs_fwupd_firmware_metadata_seed_batch7.jsonl
- MEMORY/SCHEMAS/network_identifier_record_schema_batch7.json
- REPORTS/batch7_summary.md
- RESEARCH_BACKLOG_BATCH7.md
- SCRIPTS/validate_batch7.py

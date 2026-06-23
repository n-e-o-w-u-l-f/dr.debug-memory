# Audit Report: canonical-ish BATCH review

Date: 2026-06-23
Repository: n-e-o-w-u-l-f/dr.debug-memory
Status: PROPOSAL_ONLY
Validation: STATIC_CHECK
Scope: BATCH files outside MEMORY/PROPOSALS, MEMORY/REPORTS and MEMORY/STATUS

## Summary

Canonical-ish BATCH file count: 68

This is a schema/status/canonical-readiness review. It is not a cleanup or deletion pass.

## Counts by family

- MEMORY/ANDROID: 8
- MEMORY/DEVICE_IDENTIFIERS: 3
- MEMORY/FIRMWARE: 2
- MEMORY/HARDWARE: 2
- MEMORY/MANUFACTURERS: 2
- MEMORY/NETWORKING: 29
- MEMORY/PROTOCOLS: 2
- MEMORY/REGISTRIES: 1
- MEMORY/REPAIR: 1
- MEMORY/RETRO: 1
- MEMORY/RUNS: 3
- MEMORY/SCHEMAS: 2
- MEMORY/SECURITY: 1
- MEMORY/SOFTWARE: 1
- MEMORY/SOURCES: 10

## Review rules

- No file is a safe delete candidate in this pass.
- Promotion requires source/evidence status, lifecycle status, dedupe notes, redaction check and review.
- Files under MEMORY/RUNS are review lineage by default.
- Files under MEMORY/SOURCES require source-record field review.
- Files under MEMORY/SCHEMAS require schema-shape and canonical/proposal decision.

## Review matrix

| File | Family | Initial review class | Recommendation |
|---|---|---|---|
| `MEMORY/ANDROID/android_build_and_recovery_rules_batch9.jsonl` | `ANDROID` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/ANDROID/android_build_recovery_sources_batch5.jsonl` | `ANDROID` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/ANDROID/aosp_version_api_seed_batch7.jsonl` | `ANDROID` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/ANDROID/custom_rom_recovery_projects_seed_batch4.jsonl` | `ANDROID` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/ANDROID/samsung_firmware_build_taxonomy_batch5.md` | `ANDROID` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/ANDROID/samsung_open_source_observed_seed_batch7.jsonl` | `ANDROID` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/ANDROID/samsung_open_source_seed_examples_batch5.jsonl` | `ANDROID` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/ANDROID/twrp_oem_index_seed_batch7.jsonl` | `ANDROID` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/DEVICE_IDENTIFIERS/device_identifier_authorities_batch5.jsonl` | `DEVICE_IDENTIFIERS` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/DEVICE_IDENTIFIERS/device_identifier_expansion_batch4.jsonl` | `DEVICE_IDENTIFIERS` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/DEVICE_IDENTIFIERS/device_identifier_import_targets_batch6.jsonl` | `DEVICE_IDENTIFIERS` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/FIRMWARE/firmware_terminology_expansion_batch5.md` | `FIRMWARE` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/FIRMWARE/lvfs_fwupd_firmware_metadata_seed_batch7.jsonl` | `FIRMWARE` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/HARDWARE/network_component_families_batch5.jsonl` | `HARDWARE` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/HARDWARE/network_components_seed_batch4.jsonl` | `HARDWARE` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/MANUFACTURERS/manufacturer_device_category_map_batch4.jsonl` | `MANUFACTURERS` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/MANUFACTURERS/manufacturer_research_methods_batch5.jsonl` | `MANUFACTURERS` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/NETWORKING/dhcp_parameters_seed_batch7.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/dns_parameters_seed_batch7.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_001.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_002.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_003.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_004.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_005.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_001.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_002.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_003.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_004.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_005.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_006.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_007.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/iana_ip_protocol_numbers_batch7.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/iana_port_range_policy_batch9.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch6_5000.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch7_2500_9999.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/icmp_parameters_seed_batch7.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/linux_network_component_diagnostics_batch7.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/network_diagnostics_matrix_batch5.md` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/network_error_families_seed_batch4.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/network_error_signatures_batch5.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/network_foundations_seed_batch5.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/network_protocols_seed_batch4.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/network_standards_expansion_batch6.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/service_ports_seed_batch4.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/special_purpose_address_space_seed_batch7.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/NETWORKING/tls_parameters_seed_batch7.jsonl` | `NETWORKING` | `NEEDS_STATUS_METADATA` | Review as category record; verify source/evidence and schema/status metadata. |
| `MEMORY/PROTOCOLS/application_protocol_diagnostics_seed_batch8.jsonl` | `PROTOCOLS` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/PROTOCOLS/protocol_diagnostic_matrix_batch9.jsonl` | `PROTOCOLS` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/REGISTRIES/registry_import_targets_batch9.jsonl` | `REGISTRIES` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/REPAIR/repair_source_policy_batch5.jsonl` | `REPAIR` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/RETRO/retro_hardware_sources_batch5.jsonl` | `RETRO` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/RUNS/DEVICES/2026-06-20_memory_loop_devices_by_manufacturer_batch_100_gate.md` | `RUNS` | `DO_NOT_DELETE_REVIEW_LINEAGE` | Retain as run/review lineage unless superseded by a validated report. |
| `MEMORY/RUNS/DEVICES/2026-06-20_memory_loop_devices_by_manufacturer_batch_100_review_queue_001.md` | `RUNS` | `DO_NOT_DELETE_REVIEW_LINEAGE` | Retain as run/review lineage unless superseded by a validated report. |
| `MEMORY/RUNS/MANUFACTURERS/2026-06-20_memory_loop_manufacturers_batch_100_gate.md` | `RUNS` | `DO_NOT_DELETE_REVIEW_LINEAGE` | Retain as run/review lineage unless superseded by a validated report. |
| `MEMORY/SCHEMAS/network_identifier_record_schema_batch7.json` | `SCHEMAS` | `NEEDS_SCHEMA_REVIEW` | Validate schema shape and decide whether schema is canonical or proposal-only. |
| `MEMORY/SCHEMAS/network_port_diagnostic_slot.schema.batch9.json` | `SCHEMAS` | `NEEDS_SCHEMA_REVIEW` | Validate schema shape and decide whether schema is canonical or proposal-only. |
| `MEMORY/SECURITY/tls_registry_policy_notes_batch9.jsonl` | `SECURITY` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/SOFTWARE/CHECKPOINTS/software-package-next-small-batch.md` | `SOFTWARE` | `NEEDS_STATUS_METADATA` | Review category fit, lifecycle status, source/evidence metadata and index coverage. |
| `MEMORY/SOURCES/source_registry_additions_batch4.jsonl` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/source_registry_additions_batch5.jsonl` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/source_registry_additions_batch7.jsonl` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/source_registry_additions_batch8.jsonl` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/source_registry_additions_batch9.jsonl` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260620_BATCH_001.json` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_002.json` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_003.json` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/user_requested_websites_second_pass_batch5.jsonl` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |
| `MEMORY/SOURCES/user_requested_websites_technical_evaluation_batch4.jsonl` | `SOURCES` | `NEEDS_SOURCE_RECORD_LINK` | Check source record fields, source class, retrieval metadata and canonical registry linkage. |

## Safe-delete candidates

None.

Deletion requires duplicate proof, canonical replacement path, old-reference grep, README/MEMORY index update and rollback note.

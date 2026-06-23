# Audit Report: NETWORKING normalization dedupe mapping

Date: 2026-06-23
Repository: n-e-o-w-u-l-f/dr.debug-memory
Status: STAGING_ONLY_NOT_CANONICAL
Validation: LOCAL_PARSE_AND_DEDUPE_MAPPING
Scope: 29 NETWORKING BATCH files

## Summary finding

A staging-only dedupe summary was generated from the 29 NETWORKING BATCH files. A full row-level mapping was observed locally but intentionally not committed because it produced 131541 rows and a 90M artifact.

This pass does not promote records, delete files, or write canonical NETWORKING memory.

## Generated mapping

- `MEMORY/REPORTS/AUDIT/DATA/2026-06-23_networking_batch_dedupe_mapping_summary.json`

## Parse result

- input files: 29
- mapped records observed locally: 131541
- parse errors: 0
- duplicate dedupe keys: 4

## Topic classification

| Topic class | Records |
|---|---:|
| `DHCP` | 34 |
| `DNS` | 47 |
| `FIREWALL_NAT` | 23 |
| `INTERFACE_IDENTIFIER` | 2 |
| `NETWORKING_GENERAL` | 7 |
| `OS_COMMAND_LINUX` | 5 |
| `PORT_SERVICE` | 131088 |
| `PROTOCOL` | 307 |
| `TLS` | 28 |

## Records by file

| File | Records |
|---|---:|
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_001.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_002.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_003.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_004.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch8_part_005.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_001.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_002.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_003.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_004.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_005.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_006.jsonl` | 10000 |
| `MEMORY/NETWORKING/IANA/iana_service_port_diagnostic_slots_batch9_part_007.jsonl` | 1072 |
| `MEMORY/NETWORKING/dhcp_parameters_seed_batch7.jsonl` | 38 |
| `MEMORY/NETWORKING/dns_parameters_seed_batch7.jsonl` | 37 |
| `MEMORY/NETWORKING/iana_ip_protocol_numbers_batch7.jsonl` | 256 |
| `MEMORY/NETWORKING/iana_port_range_policy_batch9.jsonl` | 2 |
| `MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch6_5000.jsonl` | 5000 |
| `MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch7_2500_9999.jsonl` | 15000 |
| `MEMORY/NETWORKING/icmp_parameters_seed_batch7.jsonl` | 22 |
| `MEMORY/NETWORKING/linux_network_component_diagnostics_batch7.jsonl` | 8 |
| `MEMORY/NETWORKING/network_diagnostics_matrix_batch5.md` | 1 |
| `MEMORY/NETWORKING/network_error_families_seed_batch4.jsonl` | 6 |
| `MEMORY/NETWORKING/network_error_signatures_batch5.jsonl` | 13 |
| `MEMORY/NETWORKING/network_foundations_seed_batch5.jsonl` | 14 |
| `MEMORY/NETWORKING/network_protocols_seed_batch4.jsonl` | 11 |
| `MEMORY/NETWORKING/network_standards_expansion_batch6.jsonl` | 4 |
| `MEMORY/NETWORKING/service_ports_seed_batch4.jsonl` | 9 |
| `MEMORY/NETWORKING/special_purpose_address_space_seed_batch7.jsonl` | 21 |
| `MEMORY/NETWORKING/tls_parameters_seed_batch7.jsonl` | 27 |

## Decision

- `SAFE_DELETE_CANDIDATE`: 0
- `PROMOTION_READY`: 0
- `NETWORKING_CANONICAL_WRITE`: 0

All observed records remain staging-only. The full row-level mapping must be regenerated only in smaller topic-specific slices before source references and canonical claim wording are reviewed.

## Recommended next action

Refine dedupe extraction into smaller topic-specific mappings before any canonical NETWORKING promotion.

## Rollback

This change is additive. Rollback is deletion of the report and generated mapping file from the review branch before merge or revert after merge.

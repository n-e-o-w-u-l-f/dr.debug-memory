# Dr.Debug-MEMORY Research Batch 6

Date: 2026-06-18
Status: PROPOSAL_ONLY_REQUIRES_PRIVATE_REVIEW

## What changed

Batch 6 continues from Batch 5 and adds a 5000-record proposal expansion:

- `MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch6_5000.jsonl`
- `MEMORY/NETWORKING/network_standards_expansion_batch6.jsonl`
- `MEMORY/DEVICE_IDENTIFIERS/device_identifier_import_targets_batch6.jsonl`
- `MEMORY/SCHEMAS/iana_service_port_diagnostic_slot.schema.json`
- `AGENTS/PROPOSALS/dr_debug_public_unknown_entity_permission_policy_BATCH6_PROPOSAL_ONLY.md`
- `SCRIPTS/set_repo_file_modes.sh`
- `SCRIPTS/validate_batch6.py`

## Important safety boundary

The request to make Dr.Debug public able to write directly to GitHub was not
implemented. The batch only prepares proposal files and commit-friendly file
modes. Final repository acceptance remains a private Dr.Debug-MEMORY task.

## 5000-addition threshold

The threshold is met by 5000 proposal-only diagnostic identifier slots:

- ports `0-2499`
- transports `tcp` and `udp`
- total: `2500 * 2 = 5000`

These are deliberately **not** final IANA assignment facts. Each row carries
`PROPOSAL_ONLY_REQUIRES_PRIVATE_REVIEW` and an acceptance rule requiring live
IANA CSV/XML verification before final database import.

## File modes

Git-compatible file modes have been set in the ZIP:

- directories: 0755
- normal files: 0644
- scripts: 0755

Use `SCRIPTS/set_repo_file_modes.sh` after extraction if the filesystem strips
modes.

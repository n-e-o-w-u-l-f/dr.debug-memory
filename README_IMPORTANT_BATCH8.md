# Dr.Debug-MEMORY Research Batch 8

Date: 2026-06-18

This package is based on Batch 7 and adds **50,000 new reviewable proposal records**.

## Threshold status

Batch 8 was created only after the requested threshold was reached:

- New counted additions: **50,000**
- Counted file: `MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch8_50000.jsonl`
- Scope: TCP/UDP diagnostic slots for ports `10000-34999`
- Formula: 25,000 ports × 2 transport protocols = 50,000 records

These are diagnostic identifier slots based on IANA/RFC6335 port-range policy. They are **not** final service assignments.

## Added research scope

Batch 8 adds source/protocol seeds for:

- IANA Service Names and Port Number Registry
- IANA Media Types
- IANA HTTP Status Codes
- IANA HTTP Field Names
- IANA SSH Protocol Parameters
- IANA DHCP/BOOTP Parameters
- IANA TLS Parameters
- AOSP Android build numbers

## Safety status

All new data is marked `PROPOSAL_ONLY_REQUIRES_PRIVATE_REVIEW`.

Dr.Debug public is not granted GitHub write permissions by this package. Repository write, merge, commit, status, index, and final database decisions remain the private Dr.Debug-MEMORY workflow.

## File modes

The ZIP uses commit-friendly modes:

- directories: `0755`
- normal files: `0644`
- scripts under `SCRIPTS/`: `0755`

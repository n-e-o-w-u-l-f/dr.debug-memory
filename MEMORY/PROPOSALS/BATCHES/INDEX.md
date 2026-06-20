# MEMORY/PROPOSALS/BATCHES/INDEX.md

Version: 0.2.2
Status: PROPOSAL_INDEX_ONLY
Scope: Navigation index for MEMORY_PROPOSAL batch files.
Artifact class: PROPOSAL_NAVIGATION

This file is navigation only and must not become a second truth.

## Active proposal batches

### Source registry proposals

- `SR-20260620-iana-baseline-source-records-proposal-001.md` — five IANA/IETF baseline source-record proposals; status `PROPOSAL_READY_FOR_REVIEW`; review required; no `MEMORY/SOURCE_REGISTRY.md` import; no canonical promotion; no binaries; no rehosting.

### Manufacturer proposals

- `MF-20260620-manufacturer-security-source-batch-001.md` — seven official security/advisory source candidates for Acer, ASUS, Dell, HP, Microsoft/MSRC and Samsung contexts; status `PROPOSAL_READY_FOR_REVIEW`; review required; no canonical promotion; no binaries; no rehosting.
- `MF-20260620-manufacturer-official-source-batch-001.md` — eight official-source manufacturer/support/download/manual source candidates; status `PROPOSAL_READY_FOR_REVIEW`; review required; no canonical promotion; no binaries; no rehosting.
- `MP-20260619-manufacturer-seed-batch-001.md` — initial official-source manufacturer discovery seed batch; status `RESEARCH_SEED`; review required; no canonical promotion; no binaries; no rehosting.

## Notes

- Canonical manufacturer facts must live in reviewed MANUFACTURERS records, not this index.
- Source-record facts must live in reviewed `MEMORY/SOURCE_REGISTRY.md` records after explicit review/import, not this index.
- Alias, regional URL and source-record handling must point to canonical records after review and must not create second truths.
- Driver, firmware, BIOS, installer and vendor-tool URLs remain high-risk binary contexts and require exact model scope, version, source, checksum if downloaded by owner workflow, backup/rollback feasibility and explicit review before any storage beyond source-link metadata.
- Security/advisory source existence does not prove a product is affected, fixed, compatible, safe or supported; exact advisory, model, version and remediation scope remain required.

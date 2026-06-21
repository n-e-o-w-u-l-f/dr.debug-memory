# MEMORY/PROPOSALS/BATCHES/INDEX.md
Version: 0.2.4-programs-seed
Status: PROPOSAL_INDEX_ONLY
Scope: Navigation index for MEMORY_PROPOSAL batch files.
Artifact class: PROPOSAL_NAVIGATION

This file is navigation only and must not become a second truth.

## Active proposal batches

### Programs proposals

- `MP-20260621-programs-seed-batch-001.md` — 100 program/application/software-tool discovery candidates; status `RESEARCH_SEED`; review required; no canonical SOFTWARE/PROGRAMS records; no versions, compatibility claims, official URL claims, binaries, installers, downloads or rehosting.

### Security advisory proposals

- `MP-20260620-security-advisories-source-seed-001.md` — official/advisory-source seed batch for security-advisory ingest; status `RESEARCH_SEED`; review required; no canonical security records; no exploit instructions; no binaries; no rehosting.

### Source registry proposals

- `SR-20260620-iana-baseline-source-records-proposal-001.md` — five IANA/IETF baseline source-record proposals; status `PROPOSAL_READY_FOR_REVIEW`; review required; no `MEMORY/SOURCE_REGISTRY.md` import; no canonical promotion; no binaries; no rehosting.

### Manufacturer proposals

- `MF-20260620-manufacturer-security-source-batch-001.md` — seven official security/advisory source candidates for Acer, ASUS, Dell, HP, Microsoft/MSRC and Samsung contexts; status `PROPOSAL_READY_FOR_REVIEW`; review required; no canonical promotion; no binaries; no rehosting.
- `MF-20260620-manufacturer-official-source-batch-001.md` — eight official-source manufacturer/support/download/manual source candidates; status `PROPOSAL_READY_FOR_REVIEW`; review required; no canonical promotion; no binaries; no rehosting.
- `MP-20260619-manufacturer-seed-batch-001.md` — initial official-source manufacturer discovery seed batch; status `RESEARCH_SEED`; review required; no canonical promotion; no binaries; no rehosting.

## Notes

- Canonical program facts must live in reviewed SOFTWARE/PROGRAMS records, not this index.
- Source-record facts must live in reviewed source registry records after explicit review/import, not this index.
- Programs that install binaries, drivers, updaters, browser extensions, package managers, remote-access tools, security tools or network analyzers require risk review before canonical import.
- Driver, firmware, BIOS, installer and vendor-tool URLs remain high-risk binary contexts and require exact model or product scope, version, source, checksum if downloaded by owner workflow, backup/rollback feasibility and explicit review before any storage beyond source-link metadata.
- Security/advisory source existence does not prove a product is affected, fixed, compatible, safe or supported; exact advisory, product, version and remediation scope remain required.

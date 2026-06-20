# MEMORY cursor: security_advisories

Status: ACTIVE
Updated: 2026-06-20
Current batch id: DR-20260620-security-advisories-loop-004-ubuntu-usn
Current branch: main
Resume from: ubuntu_usn_8442_8449_8450_8452_8453_proposal_ready
Last completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-ubuntu-usn-batch-004.md
Previous completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-003.md
Previous seed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-source-seed-001.md
Next recommended action: next_publisher_or_ubuntu_canonical_review
Batch size requested: 5
Batch size completed: 5 release/package-scoped advisory-level proposal records

## Cursor state

Security-advisories loop has completed the initial proposal-first source seed, Mozilla MFSA batches 002 and 003, and Ubuntu USN batch 004.

## Last batch records

- `USN-8452-1` — `node-pbkdf2` — Ubuntu release/package-scoped proposal record.
- `USN-8453-1` — `libnet-cidr-lite-perl` — Ubuntu release/package-scoped proposal record.
- `USN-8449-1` — `ldns` package variants — Ubuntu release/package-scoped proposal record.
- `USN-8442-1` — `kitty` / `kitty-shell-integration` — Ubuntu release/package-scoped proposal record.
- `USN-8450-1` — `tomcat11` package variants — Ubuntu release/package-scoped proposal record.

## Next batch constraints

- Dedupe by advisory-id, CVE, package, Ubuntu release, fixed package version, publisher, source URL and canonical ID.
- Do not dedupe by CVE alone because the same CVE can have upstream, package and release-specific distribution scopes.
- Preserve Ubuntu Pro / ESM Apps / Legacy Support limitations where shown by the official USN page.
- If affected/fixed version scope is missing or ambiguous, store the limitation and keep the entry proposal-only.
- Do not create exploit instructions, proof-of-concept reproduction steps, package downloads, raw crawl dumps, binaries, firmware, drivers, installers or rehosting artifacts.

## Rollback

Rollback batch id DR-20260620-security-advisories-loop-004-ubuntu-usn by removing `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-ubuntu-usn-batch-004.md`, removing `/MEMORY/REPORTS/SECURITY_ADVISORIES/DR-20260620-security-advisories-loop-004-ubuntu-usn.md`, and restoring the previous cursor state at `mozilla_mfsa_2026_57_61_product_scope_proposal_ready` with last completed artifact `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-003.md`.

# MEMORY cursor: security_advisories

Status: ACTIVE
Updated: 2026-06-20
Current batch id: DR-20260620-security-advisories-loop-005-debian-dsa
Current branch: main
Resume from: debian_dsa_6354_6353_6350_6349_6340_proposal_ready
Last completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-debian-dsa-batch-005.md
Previous completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-ubuntu-usn-batch-004.md
Previous seed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-source-seed-001.md
Next recommended action: next_publisher_or_debian_canonical_review
Batch size requested: 5
Batch size completed: 5 distribution/package-scoped advisory-level proposal records

## Cursor state

Security-advisories loop has completed the initial proposal-first source seed, Mozilla MFSA batches 002 and 003, Ubuntu USN batch 004, and Debian DSA batch 005.

## Last batch records

- `DSA-6354-1` — `libconfig-inifiles-perl` — Debian distribution/package-scoped proposal record.
- `DSA-6353-1` — `gst-libav1.0` — Debian distribution/package-scoped proposal record.
- `DSA-6350-1` — `firefox-esr` — Debian distribution/package-scoped proposal record.
- `DSA-6349-1` — `atril` — Debian distribution/package-scoped proposal record.
- `DSA-6340-1` — `neutron` — Debian distribution/package-scoped proposal record.

## Next batch constraints

- Dedupe by advisory-id, CVE, package, Debian distribution, fixed package version, publisher, source URL and canonical ID.
- Do not dedupe by CVE alone because the same CVE can have upstream, product, package and distribution-specific scopes.
- Preserve Debian not-affected distribution notes where shown by the official DSA page.
- If affected/fixed version scope is missing or ambiguous, store the limitation and keep the entry proposal-only.
- Do not create exploit instructions, proof-of-concept reproduction steps, package downloads, raw crawl dumps, binaries, firmware, drivers, installers or rehosting artifacts.

## Rollback

Rollback batch id DR-20260620-security-advisories-loop-005-debian-dsa by removing `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-debian-dsa-batch-005.md`, removing `/MEMORY/REPORTS/SECURITY_ADVISORIES/DR-20260620-security-advisories-loop-005-debian-dsa.md`, and restoring the previous cursor state at `ubuntu_usn_8442_8449_8450_8452_8453_proposal_ready` with last completed artifact `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-ubuntu-usn-batch-004.md`.

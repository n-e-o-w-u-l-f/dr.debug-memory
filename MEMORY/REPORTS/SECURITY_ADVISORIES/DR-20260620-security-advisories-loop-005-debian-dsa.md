# DR-20260620-security-advisories-loop-005-debian-dsa

Version: 0.1.0
Status: APPLIED_PROPOSAL_BATCH
Date: 2026-06-20
Mode: OWNER_ADMIN_MODE
Branch: main
Batch requested: 5
Batch completed: 5 Debian DSA distribution/package-scoped proposal records
Previous cursor: ubuntu_usn_8442_8449_8450_8452_8453_proposal_ready
New cursor: debian_dsa_6354_6353_6350_6349_6340_proposal_ready
Rollback id: DR-20260620-security-advisories-loop-005-debian-dsa

## Command summary

Requested loop:

`memory loop security-advisories --publisher "Debian Security Team" --advisory-list DSA-6354-1,DSA-6353-1,DSA-6350-1,DSA-6349-1,DSA-6340-1`

Scope included security advisories, CVEs and vulnerability notices. The applied batch is deliberately proposal-only because canonical CVE/security entries require later review, dedupe and promotion. No exploit reproduction steps, package downloads, raw crawl dumps, binaries or rehosting artifacts were added.

## Source verification

Official Debian sources were checked for the five records. Package and fixed-version scope are limited to Debian advisory or tracker fields:

- `DSA-6354-1` — `libconfig-inifiles-perl` — trixie security fixed in `3.000003-3+deb13u1` — `CVE-2026-11527`.
- `DSA-6353-1` — `gst-libav1.0` — stable trixie fixed in `1.26.2-1+deb13u1` — `CVE-2026-52717`.
- `DSA-6350-1` — `firefox-esr` — stable trixie fixed in `140.12.0esr-1~deb13u1` — Mozilla CVE set as listed by Debian.
- `DSA-6349-1` — `atril` — stable trixie fixed in `1.26.2-4+deb13u1` — `CVE-2026-46529`.
- `DSA-6340-1` — `neutron` — stable trixie fixed in `2:26.0.3-0+deb13u2`; oldstable bookworm not affected — `CVE-2026-50266`.

## Applied files

- `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-debian-dsa-batch-005.md`
- `/MEMORY/REPORTS/SECURITY_ADVISORIES/DR-20260620-security-advisories-loop-005-debian-dsa.md`
- `/MEMORY/STATE/CURSORS/security_advisories.md`

## Dedupe result

No CVE-only dedupe was performed. Debian DSA fixed-version scope is distribution/package-specific and may overlap with upstream/vendor or other distribution advisories. Minimum dedupe key for later canonical review is:

`advisory-id`, `cve`, `package`, `debian-distribution`, `fixed-package-version`, `publisher`, `source-url`, `canonical-id`.

## Validation

- markdown-links: static review only; no repository-relative broken links introduced in proposal/report.
- json-yaml: no JSON/YAML data files added.
- source-records: requested capture fields present for each proposal record.
- affected-version-scope: limited to official Debian advisory/tracker distribution/package/fixed-version fields.
- no-second-truth: proposal-only, no canonical SECURITY entry and no SOURCE_REGISTRY import.
- redaction: no secrets, credentials, customer data, serials, raw logs, proof-of-concept steps, package downloads, raw crawl dumps or binaries.
- rollback-ready: remove batch/report and restore previous `/MEMORY/STATE/CURSORS/security_advisories.md` cursor.

## Limitations

- This batch does not claim canonical CVE records were created.
- It does not generalize affected versions beyond Debian advisory or tracker scope.
- It does not download or mirror Debian packages.
- `DSA-6351-1` was intentionally excluded because the Debian index had shown a label/link inconsistency during earlier review.
- `CHANGES.md` and navigation indexes were not updated because the requested write scope was limited to proposals, reports and cursors.

## Next cursor action

Continue with another publisher or a Debian canonical-review pass only after duplicate checks against Debian DSA proposal records and upstream/vendor advisories.

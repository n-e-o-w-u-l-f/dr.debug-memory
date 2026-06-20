# MP-20260620-security-advisories-debian-dsa-batch-005

Version: 0.1.0
Status: PROPOSAL_READY_FOR_REVIEW
Family: SECURITY
Category: security-advisories
Publisher scope: Debian Security Advisories
Created: 2026-06-20
Updated: 2026-06-20
Review required: YES
Canonical promotion: NO
Batch id: DR-20260620-security-advisories-loop-005-debian-dsa
Previous cursor: ubuntu_usn_8442_8449_8450_8452_8453_proposal_ready
Requested artifact types: security-advisories, cves, vulnerability-notices

## Scope

This proposal batch captures five Debian Security Advisories as package/distribution-scoped advisory source records. It does not create canonical vulnerability records, SOURCE_REGISTRY imports, exploit notes, proof-of-concept details, package downloads, binaries, raw crawl dumps or rehosting artifacts.

## Publisher policy

Debian Security Advisories and Debian Security Tracker entries are official Debian sources. Package and fixed-version scope are scoped exactly to each advisory or tracker page. Debian package evidence must not be treated as upstream/vendor replacement evidence unless later review explicitly reconciles the sources.

## Source limitation

The Debian security index previously showed a label/link inconsistency around `DSA-6351-1`; that advisory is intentionally not imported in this batch. For `DSA-6354-1`, the official Debian Security Tracker entry is used as the source record because the corresponding announcement-mail URL was not reliably retrievable during review.

## Dedupe rule

Do not deduplicate by CVE alone. Debian DSAs may overlap with upstream/vendor advisories and other distribution advisories. The minimum dedupe key for this batch is:

`advisory-id`, `cve`, `package`, `debian-distribution`, `fixed-package-version`, `publisher`, `source-url`, `canonical-id`.

## Capture fields

Each record uses:

`advisory_id`, `cve_ids`, `publisher`, `affected_product_scope`, `affected_versions`, `fixed_versions`, `official_url`, `source_class`, `retrieved_at`, `claim_supported`, `limitations`.

## Advisory source records

### 001 — DSA-6354-1

- advisory_id: `DSA-6354-1`
- cve_ids: `CVE-2026-11527`
- publisher: `Debian Security Team`
- affected_product_scope: `Debian package libconfig-inifiles-perl on trixie as listed by the Debian Security Tracker`
- affected_versions: `trixie libconfig-inifiles-perl 3.000003-3 vulnerable as listed by Debian Security Tracker; exact vulnerable range not expanded beyond Debian tracker text`
- fixed_versions: `trixie security libconfig-inifiles-perl 3.000003-3+deb13u1`
- official_url: `https://security-tracker.debian.org/tracker/DSA-6354-1`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Debian Security Tracker DSA-6354-1 states the advisory id, package, CVE and trixie fixed package version.`
- limitations: `Tracker-scoped source used because the direct announcement-mail page was not reliably retrievable during review. Debian-package scope only; do not generalize to upstream Perl module versions, Ubuntu, Fedora or other distributions.`

### 002 — DSA-6353-1

- advisory_id: `DSA-6353-1`
- cve_ids: `CVE-2026-52717`
- publisher: `Debian Security Team`
- affected_product_scope: `Debian package gst-libav1.0 on stable trixie as listed by the DSA`
- affected_versions: `versions before the DSA-listed fixed package version; exact vulnerable range not expanded beyond Debian's advisory text`
- fixed_versions: `stable trixie gst-libav1.0 1.26.2-1+deb13u1`
- official_url: `https://lists.debian.org/debian-security-announce/2026/msg00264.html`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Debian DSA-6353-1 states the advisory id, package, CVE and fixed version for stable trixie.`
- limitations: `Debian-package scope only; do not generalize to upstream FFmpeg/GStreamer release lines or other distributions.`

### 003 — DSA-6350-1

- advisory_id: `DSA-6350-1`
- cve_ids: `CVE-2026-12289; CVE-2026-12290; CVE-2026-12291; CVE-2026-12292; CVE-2026-12294; CVE-2026-12295; CVE-2026-12296; CVE-2026-12297; CVE-2026-12298; CVE-2026-12299; CVE-2026-12302; CVE-2026-12304; CVE-2026-12305; CVE-2026-12306; CVE-2026-12307; CVE-2026-12308; CVE-2026-12309; CVE-2026-12310; CVE-2026-12311; CVE-2026-12312; CVE-2026-12313; CVE-2026-12314; CVE-2026-12315; CVE-2026-12324; CVE-2026-12325; CVE-2026-12327; CVE-2026-12328; CVE-2026-12329; CVE-2026-12330`
- publisher: `Debian Security Team`
- affected_product_scope: `Debian package firefox-esr on stable trixie as listed by the DSA`
- affected_versions: `versions before the DSA-listed fixed package version; exact vulnerable range not expanded beyond Debian's advisory text`
- fixed_versions: `stable trixie firefox-esr 140.12.0esr-1~deb13u1`
- official_url: `https://lists.debian.org/debian-security-announce/2026/msg00261.html`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Debian DSA-6350-1 states the advisory id, package, CVEs and fixed version for stable trixie.`
- limitations: `Overlaps with Mozilla MFSA proposal records but remains Debian package scope. Do not merge with upstream Firefox ESR records by CVE alone.`

### 004 — DSA-6349-1

- advisory_id: `DSA-6349-1`
- cve_ids: `CVE-2026-46529`
- publisher: `Debian Security Team`
- affected_product_scope: `Debian package atril on stable trixie as listed by the DSA`
- affected_versions: `versions before the DSA-listed fixed package version; exact vulnerable range not expanded beyond Debian's advisory text`
- fixed_versions: `stable trixie atril 1.26.2-4+deb13u1`
- official_url: `https://lists.debian.org/debian-security-announce/2026/msg00260.html`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Debian DSA-6349-1 states the advisory id, package, CVE, Debian bug and fixed version for stable trixie.`
- limitations: `Debian-package scope only; opening a crafted PDF is an advisory condition, not a generic file-parser claim outside Atril/Debian context.`

### 005 — DSA-6340-1

- advisory_id: `DSA-6340-1`
- cve_ids: `CVE-2026-50266`
- publisher: `Debian Security Team`
- affected_product_scope: `Debian package neutron on stable trixie as listed by the DSA; oldstable bookworm not affected according to the DSA`
- affected_versions: `versions before the DSA-listed fixed package version for stable trixie; oldstable bookworm not affected per DSA`
- fixed_versions: `stable trixie neutron 2:26.0.3-0+deb13u2`
- official_url: `https://www.debian.org/security/dsa-6340-1`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Debian DSA-6340-1 states the advisory id, package, CVE, bookworm not-affected note and fixed version for stable trixie.`
- limitations: `Debian-package scope only; do not generalize to upstream OpenStack Neutron branches, downstream clouds or vendor appliances without separate evidence.`

## Validation notes

- markdown-links: repository-relative links intentionally avoided except later index references.
- json-yaml: no JSON/YAML data files added.
- source-records: requested capture fields present for each record.
- affected-version-scope: fixed versions are Debian distribution/package scoped and limited to DSA or Debian Security Tracker fields.
- no-second-truth: proposal-only; no canonical SECURITY path or SOURCE_REGISTRY import.
- redaction: no secrets, credentials, customer data, serials, raw logs, exploit code, proof-of-concept steps, package downloads, raw crawl dumps or binaries.
- rollback: remove this file and associated report/cursor references.

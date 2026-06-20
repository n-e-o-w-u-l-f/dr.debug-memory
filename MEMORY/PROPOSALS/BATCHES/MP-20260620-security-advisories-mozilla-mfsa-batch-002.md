# MP-20260620-security-advisories-mozilla-mfsa-batch-002

Version: 0.1.0
Status: PROPOSAL_READY_FOR_REVIEW
Family: SECURITY
Category: security-advisories
Publisher scope: Mozilla Foundation Security Advisories
Created: 2026-06-20
Updated: 2026-06-20
Review required: YES
Canonical promotion: NO
Batch id: DR-20260620-security-advisories-loop-002-mozilla-mfsa
Previous cursor: source_seed_completed
Requested artifact types: security-advisories, cves, vulnerability-notices

## Scope

This proposal batch captures five Mozilla Foundation Security Advisories as advisory-level source records. It does not create canonical vulnerability records, exploit notes, proof-of-concept details, binary artifacts or rehosting artifacts.

## Selection rationale

The batch starts with smaller Mozilla advisories whose CVE lists, product scope and fixed versions are compact enough for exact review before attempting larger Firefox/Thunderbird 152 roll-up advisories.

## Policy guards

- Proposal-first: no canonical CVE/security record promotion.
- Official-source only for these entries: `mozilla.org` advisory pages.
- No second truth: this file is a review proposal; canonical records must later live in one reviewed SECURITY path or source-record location.
- No exploit instructions, weaponization, proof-of-concept reproduction, raw crawl dumps, binaries, downloads, firmware, drivers, installers, archive uploads or rehosting artifacts.
- Affected/fixed version scope is limited to the Mozilla advisory page fields and must not be generalized to other products or release channels.

## Capture fields

Each record uses:

`advisory_id`, `cve_ids`, `publisher`, `affected_product_scope`, `affected_versions`, `fixed_versions`, `official_url`, `source_class`, `retrieved_at`, `claim_supported`, `limitations`.

## Advisory source records

### 001 — MFSA 2026-52

- advisory_id: `MFSA-2026-52`
- cve_ids: `CVE-2026-9078`
- publisher: `Mozilla`
- affected_product_scope: `Firefox for iOS`
- affected_versions: `versions before Firefox for iOS 151.1 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Firefox for iOS 151.1`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-52/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-52 states Firefox for iOS 151.1 as fixed version and lists CVE-2026-9078.`
- limitations: `Do not infer desktop Firefox, Android, ESR, Focus or Klar exposure from this iOS-specific advisory.`

### 002 — MFSA 2026-53

- advisory_id: `MFSA-2026-53`
- cve_ids: `CVE-2026-9308; CVE-2026-9309`
- publisher: `Mozilla`
- affected_product_scope: `Firefox for iOS`
- affected_versions: `versions before Firefox for iOS 151.2 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Firefox for iOS 151.2`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-53/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-53 states Firefox for iOS 151.2 as fixed version and lists CVE-2026-9308 and CVE-2026-9309.`
- limitations: `Do not infer desktop Firefox, Android, ESR, Focus or Klar exposure from this iOS-specific advisory.`

### 003 — MFSA 2026-54

- advisory_id: `MFSA-2026-54`
- cve_ids: `CVE-2026-10701; CVE-2026-10702`
- publisher: `Mozilla`
- affected_product_scope: `Firefox`
- affected_versions: `versions before Firefox 151.0.3 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Firefox 151.0.3`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-54/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-54 states Firefox 151.0.3 as fixed version and lists CVE-2026-10701 and CVE-2026-10702.`
- limitations: `Do not infer Firefox ESR, Thunderbird, Android, iOS, Focus or Klar exposure from this Firefox advisory.`

### 004 — MFSA 2026-55

- advisory_id: `MFSA-2026-55`
- cve_ids: `CVE-2026-11799`
- publisher: `Mozilla`
- affected_product_scope: `Focus for iOS; Klar for iOS`
- affected_versions: `versions before Focus for iOS 151.3.1 and Klar for iOS 151.3.1 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Focus for iOS 151.3.1; Klar for iOS 151.3.1`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-55/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-55 states Focus for iOS 151.3.1 and Klar for iOS 151.3.1 as fixed versions and lists CVE-2026-11799.`
- limitations: `Do not infer Firefox desktop, Firefox for iOS, Android, ESR or Thunderbird exposure from this Focus/Klar iOS advisory.`

### 005 — MFSA 2026-56

- advisory_id: `MFSA-2026-56`
- cve_ids: `CVE-2026-53899; CVE-2026-53900`
- publisher: `Mozilla`
- affected_product_scope: `Firefox for iOS`
- affected_versions: `versions before Firefox for iOS 152 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Firefox for iOS 152`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-56/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-56 states Firefox for iOS 152 as fixed version and lists CVE-2026-53899 and CVE-2026-53900.`
- limitations: `Do not infer desktop Firefox, Android, ESR, Focus, Klar or Thunderbird exposure from this iOS-specific advisory.`

## Dedupe keys

`advisory-id`, `cve`, `product`, `version-range`, `publisher`, `source-url`, `canonical-id`.

## Validation notes

- markdown-links: repository-relative links intentionally avoided except later index references.
- json-yaml: no JSON/YAML data files added.
- source-records: requested capture fields present for each record.
- affected-version-scope: intentionally limited to Mozilla advisory fixed-version fields and non-generalized pre-fixed scope wording.
- no-second-truth: proposal-only; no canonical SECURITY path or SOURCE_REGISTRY import.
- redaction: no secrets, credentials, customer data, serials, raw logs, exploit code, proof-of-concept steps, raw crawl dumps or binaries.
- rollback: remove this file and associated report/cursor references.

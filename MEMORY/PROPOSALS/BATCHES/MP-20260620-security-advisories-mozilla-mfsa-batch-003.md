# MP-20260620-security-advisories-mozilla-mfsa-batch-003

Version: 0.1.0
Status: PROPOSAL_READY_FOR_REVIEW
Family: SECURITY
Category: security-advisories
Publisher scope: Mozilla Foundation Security Advisories
Created: 2026-06-20
Updated: 2026-06-20
Review required: YES
Canonical promotion: NO
Batch id: DR-20260620-security-advisories-loop-003-mozilla-mfsa-57-61
Previous cursor: mozilla_mfsa_2026_52_56_proposal_ready
Requested artifact types: security-advisories, cves, vulnerability-notices

## Scope

This proposal batch captures Mozilla Foundation Security Advisories MFSA 2026-57 through MFSA 2026-61 as five product-scoped advisory source records. It does not create canonical vulnerability records, SOURCE_REGISTRY imports, exploit notes, proof-of-concept details, raw Bugzilla dumps, binary artifacts, downloads or rehosting artifacts.

## Dedupe rule

Do not deduplicate by CVE alone. The same CVE can appear in multiple Mozilla advisories with different product and fixed-version scope. The minimum dedupe key for this batch is:

`advisory-id`, `cve`, `product`, `fixed-version`, `publisher`, `source-url`, `canonical-id`.

## Capture fields

Each record uses:

`advisory_id`, `cve_ids`, `publisher`, `affected_product_scope`, `affected_versions`, `fixed_versions`, `official_url`, `source_class`, `retrieved_at`, `claim_supported`, `limitations`.

## Advisory source records

### 001 — MFSA 2026-57

- advisory_id: `MFSA-2026-57`
- cve_ids: `CVE-2026-12289; CVE-2026-12290; CVE-2026-12291; CVE-2026-12292; CVE-2026-12293; CVE-2026-12294; CVE-2026-12295; CVE-2026-12296; CVE-2026-12297; CVE-2026-12298; CVE-2026-12299; CVE-2026-12300; CVE-2026-12301; CVE-2026-12302; CVE-2026-12303; CVE-2026-12304; CVE-2026-12305; CVE-2026-12306; CVE-2026-12307; CVE-2026-12308; CVE-2026-12309; CVE-2026-12310; CVE-2026-12311; CVE-2026-12312; CVE-2026-12313; CVE-2026-12314; CVE-2026-12315; CVE-2026-12316; CVE-2026-12317; CVE-2026-12318; CVE-2026-12319; CVE-2026-12320; CVE-2026-12321; CVE-2026-12322; CVE-2026-12323; CVE-2026-12324; CVE-2026-12325; CVE-2026-12326; CVE-2026-12327; CVE-2026-12328`
- publisher: `Mozilla`
- affected_product_scope: `Firefox`
- affected_versions: `versions before Firefox 152 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Firefox 152`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-57/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-57 states Firefox 152 as fixed version and lists the captured CVE IDs for Firefox.`
- limitations: `Do not infer Firefox ESR, Thunderbird, Android, iOS, Focus or Klar exposure from this Firefox advisory. CVEs shared with ESR/Thunderbird require product-specific records.`

### 002 — MFSA 2026-58

- advisory_id: `MFSA-2026-58`
- cve_ids: `CVE-2026-12289; CVE-2026-12290; CVE-2026-12294; CVE-2026-12295; CVE-2026-12296; CVE-2026-12297; CVE-2026-12298; CVE-2026-12299; CVE-2026-12302; CVE-2026-12304; CVE-2026-12305; CVE-2026-12306; CVE-2026-12307; CVE-2026-12308; CVE-2026-12309; CVE-2026-12310; CVE-2026-12311; CVE-2026-12312; CVE-2026-12313; CVE-2026-12314; CVE-2026-12315; CVE-2026-12324; CVE-2026-12325; CVE-2026-12327; CVE-2026-12328; CVE-2026-12329; CVE-2026-12330`
- publisher: `Mozilla`
- affected_product_scope: `Firefox ESR`
- affected_versions: `versions before Firefox ESR 140.12 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Firefox ESR 140.12`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-58/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-58 states Firefox ESR 140.12 as fixed version and lists the captured CVE IDs for Firefox ESR.`
- limitations: `Do not infer Firefox 152, Firefox ESR 115.37 or Thunderbird fixed versions from this ESR 140.12 advisory.`

### 003 — MFSA 2026-59

- advisory_id: `MFSA-2026-59`
- cve_ids: `CVE-2026-12289; CVE-2026-12290; CVE-2026-12291; CVE-2026-12294; CVE-2026-12295; CVE-2026-12297; CVE-2026-12299; CVE-2026-12302; CVE-2026-12325; CVE-2026-12328; CVE-2026-12330`
- publisher: `Mozilla`
- affected_product_scope: `Firefox ESR`
- affected_versions: `versions before Firefox ESR 115.37 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Firefox ESR 115.37`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-59/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-59 states Firefox ESR 115.37 as fixed version and lists the captured CVE IDs for Firefox ESR.`
- limitations: `Do not infer Firefox ESR 140.12, Firefox 152 or Thunderbird fixed versions from this ESR 115.37 advisory.`

### 004 — MFSA 2026-60

- advisory_id: `MFSA-2026-60`
- cve_ids: `CVE-2026-12289; CVE-2026-12290; CVE-2026-12291; CVE-2026-12292; CVE-2026-12293; CVE-2026-12294; CVE-2026-12295; CVE-2026-12296; CVE-2026-12297; CVE-2026-12298; CVE-2026-12299; CVE-2026-12300; CVE-2026-12301; CVE-2026-12302; CVE-2026-12303; CVE-2026-12304; CVE-2026-12305; CVE-2026-12306; CVE-2026-12307; CVE-2026-12308; CVE-2026-12309; CVE-2026-12310; CVE-2026-12311; CVE-2026-12312; CVE-2026-12313; CVE-2026-12314; CVE-2026-12315; CVE-2026-12316; CVE-2026-12317; CVE-2026-12318; CVE-2026-12319; CVE-2026-12320; CVE-2026-12321; CVE-2026-12322; CVE-2026-12323; CVE-2026-12324; CVE-2026-12325; CVE-2026-12326; CVE-2026-12327; CVE-2026-12328`
- publisher: `Mozilla`
- affected_product_scope: `Thunderbird`
- affected_versions: `versions before Thunderbird 152 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Thunderbird 152`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-60/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-60 states Thunderbird 152 as fixed version, lists the captured CVE IDs for Thunderbird, and notes Thunderbird's email scripting limitation.`
- limitations: `Mozilla notes these flaws generally cannot be exploited through email in Thunderbird because scripting is disabled when reading mail, but may be risks in browser or browser-like contexts. Do not infer Firefox or Thunderbird ESR fixed versions from this Thunderbird 152 advisory.`

### 005 — MFSA 2026-61

- advisory_id: `MFSA-2026-61`
- cve_ids: `CVE-2026-12289; CVE-2026-12290; CVE-2026-12291; CVE-2026-12292; CVE-2026-12294; CVE-2026-12295; CVE-2026-12296; CVE-2026-12297; CVE-2026-12298; CVE-2026-12299; CVE-2026-12302; CVE-2026-12304; CVE-2026-12305; CVE-2026-12306; CVE-2026-12307; CVE-2026-12308; CVE-2026-12309; CVE-2026-12310; CVE-2026-12311; CVE-2026-12312; CVE-2026-12313; CVE-2026-12314; CVE-2026-12315; CVE-2026-12324; CVE-2026-12325; CVE-2026-12327; CVE-2026-12328; CVE-2026-12329; CVE-2026-12330`
- publisher: `Mozilla`
- affected_product_scope: `Thunderbird`
- affected_versions: `versions before Thunderbird 140.12 within the advisory scope; exact vulnerable build range not expanded beyond Mozilla's advisory text`
- fixed_versions: `Thunderbird 140.12`
- official_url: `https://www.mozilla.org/en-US/security/advisories/mfsa2026-61/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla advisory 2026-61 states Thunderbird 140.12 as fixed version, lists the captured CVE IDs for Thunderbird, and notes Thunderbird's email scripting limitation.`
- limitations: `Mozilla notes these flaws generally cannot be exploited through email in Thunderbird because scripting is disabled when reading mail, but may be risks in browser or browser-like contexts. Do not infer Firefox ESR fixed versions from this Thunderbird 140.12 advisory.`

## Cross-product overlap notes

- `CVE-2026-12326` is scoped by Mozilla to Firefox 152 and Thunderbird 152.
- `CVE-2026-12327` is scoped by Mozilla to Firefox ESR 140.12, Thunderbird ESR 140.12, Firefox 152 and Thunderbird 152.
- `CVE-2026-12328` is scoped by Mozilla to Firefox ESR 115.37, Firefox ESR 140.12, Thunderbird ESR 140.12, Firefox 152 and Thunderbird 152.
- Repeated CVEs are not duplicates by themselves; they require product/fixed-version scoped records.

## Validation notes

- markdown-links: repository-relative links intentionally avoided except later index references.
- json-yaml: no JSON/YAML data files added.
- source-records: requested capture fields present for each record.
- affected-version-scope: limited to official Mozilla advisory product and fixed-version fields.
- no-second-truth: proposal-only; no canonical SECURITY path or SOURCE_REGISTRY import.
- redaction: no secrets, credentials, customer data, serials, raw logs, exploit code, proof-of-concept steps, raw Bugzilla dumps, raw crawl dumps or binaries.
- rollback: remove this file and associated report/cursor references.

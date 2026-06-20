# GIGABYTE URL Normalization Proposal 001

run_id: DD-RUN-20260620-GIGABYTE-URL-NORMALIZATION-PROPOSAL-001
mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
created_at: 2026-06-20
status: PROPOSAL_ONLY
risk: LOW
data_loss_risk: NONE
canonical_records_changed: 0
binary_actions: 0
rehosting_actions: 0

## Scope

This proposal continues the `devices-by-manufacturer` review loop for the visible GIGABYTE device records in:

- `MEMORY/HARDWARE/DEVICES/devices.jsonl`
- cursor/index context: `MEMORY/HARDWARE/DEVICES/devices_by_manufacturer.md`

No canonical records are changed by this file. The goal is to prepare a reviewable URL-normalization patch for the five visible GIGABYTE records without silently overwriting revision-sensitive facts.

## Repository gates applied

- Safety before speed; source quality before claims; dedupe before second truth; redaction before storage.
- Use official vendor pages first.
- Keep canonical factual content in `devices.jsonl`; index/navigation files must not become a second truth.
- Every canonical fact still needs explicit source and validation status before promotion.
- Drivers, firmware, BIOS and installers remain source references only; no binary rehosting or downloads were performed.

## Current visible records reviewed

The current visible `devices.jsonl` GIGABYTE records use these stored URL patterns:

1. `https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10`
2. `https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10`
3. `https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10`
4. `https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10`
5. `https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10`

Search/open review on 2026-06-20 found official GIGABYTE pages with different currently visible URL shapes for several of these models. This proposal therefore treats the issue as URL normalization, not as device identity replacement.

## Proposed URL normalization candidates

| Device | Current stored URL pattern | Official page observed 2026-06-20 | Proposed action | Confidence |
|---|---|---|---|---|
| Z890 AORUS MASTER | `/Z890-AORUS-MASTER-rev-10` | `/Z890-AORUS-MASTER`, `/Z890-AORUS-MASTER/support`, `/Z890-AORUS-MASTER/sp` | Replace product/support/manual/download base with no-rev URL family after local fetch confirms redirects or 200 responses. Keep `rev. 1.0` as model/revision note only if separately evidenced. | MEDIUM |
| Z890 AORUS ELITE WIFI7 | `/Z890-AORUS-ELITE-WIFI7-rev-10` | `/Z890-AORUS-ELITE-WIFI7`, `/Z890-AORUS-ELITE-WIFI7/support`, `/Z890-AORUS-ELITE-WIFI7/sp` | Replace base URLs with no-rev URL family after local fetch confirms. Add revision note that official spec distinguishes PCB rev. 1.0 and 1.1 Wi-Fi modules. | MEDIUM-HIGH |
| X870E AORUS MASTER | `/X870E-AORUS-MASTER-rev-10` | `/X870E-AORUS-MASTER`, `/X870E-AORUS-MASTER/support` | Replace base URLs with no-rev URL family after local fetch confirms. Keep revision value review-required. | MEDIUM |
| X870 AORUS ELITE WIFI7 ICE | `/X870-AORUS-ELITE-WIFI7-ICE-rev-10` | `/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11`, `/support`, `/sp` | Replace base URLs with official combined `rev-10-11` URL family. Keep model_numbers as `rev. 1.0/1.1` unless canonical schema requires separate revision fields. | HIGH |
| B850 AORUS ELITE WIFI7 | `/B850-AORUS-ELITE-WIFI7-rev-10` | `/B850-AORUS-ELITE-WIFI7-rev-1x`, `/support`, `/sp` | Replace base URLs with official `rev-1x` URL family. Change model_numbers revision from `rev. 1.0` to `rev. 1.x` only after review, because that is a factual model/revision mutation. | MEDIUM-HIGH |

## Source records proposed for later SOURCE_REGISTRY-compatible ingestion

```yaml
sources:
  - url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER
    title: Z890 AORUS MASTER Motherboard - GIGABYTE Global
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: product identity and feature context for Z890 AORUS MASTER
    versions: unspecified page-level revision; stored record says rev. 1.0 but current observed product URL is no-rev
    claim_supported: official product page exists for model name and Intel Core Ultra Series 2 platform
    limitations: exact rev. 1.0 URL relationship needs local fetch/redirect validation
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support
    title: Z890 AORUS MASTER Motherboard Support
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: support/download/manual landing page reference only
    versions: page includes driver/BIOS listings that can change over time
    claim_supported: official support page exists for model name
    limitations: do not import binary versions without separate hash/version review
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7
    title: Z890 AORUS ELITE WIFI7 Motherboard
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: product identity and feature context for Z890 AORUS ELITE WIFI7
    versions: official spec distinguishes PCB rev. 1.0 and PCB rev. 1.1 for Wi-Fi module
    claim_supported: official product page exists for model name and Intel Core Ultra Series 2 platform
    limitations: exact stored rev-10 URL relationship needs local fetch/redirect validation
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/sp
    title: Z890 AORUS ELITE WIFI7 Motherboard Specifications
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: revision-sensitive Wi-Fi module specification
    versions: PCB rev. 1.0 uses MediaTek Wi-Fi 7 MT7925; PCB rev. 1.1 uses Realtek Wi-Fi 7 RTL8922AE
    claim_supported: official specification page identifies revision-sensitive networking module details
    limitations: this does not by itself prove all other current compact record fields
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER
    title: X870E AORUS MASTER Motherboard
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: product identity and AM5/X870E platform context
    versions: unspecified page-level revision; stored record says rev. 1.0 but observed product URL is no-rev
    claim_supported: official product page exists for model name and AMD AM5/Ryzen 9000/8000/7000 context
    limitations: exact rev. 1.0 relationship needs local fetch/redirect validation
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support
    title: X870E AORUS MASTER Motherboard Support
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: support/download/manual landing page reference only
    versions: page includes driver/BIOS listings that can change over time
    claim_supported: official support page exists for model name
    limitations: do not import binary versions without separate hash/version review
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11
    title: X870 AORUS ELITE WIFI7 ICE (Rev. 1.0/1.1) Motherboard
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: product identity and AM5/X870 platform context for rev. 1.0/1.1
    versions: Rev. 1.0/1.1
    claim_supported: official product page exists with combined rev. 1.0/1.1 URL family
    limitations: separate rev. 1.2 page also exists and must not be silently merged
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support
    title: X870 AORUS ELITE WIFI7 ICE (Rev. 1.0/1.1) Motherboard Support
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: support/download/manual landing page reference only for rev. 1.0/1.1
    versions: Rev. 1.0/1.1; page includes driver/BIOS listings that can change over time
    claim_supported: official support page exists for combined rev. 1.0/1.1 URL family
    limitations: do not import binary versions without separate hash/version review
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x
    title: B850 AORUS ELITE WIFI7 (Rev. 1.x) Motherboard
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: product identity and AM5/B850 platform context for rev. 1.x
    versions: Rev. 1.x
    claim_supported: official product page exists with rev. 1.x URL family
    limitations: stored record says rev. 1.0; revision mutation needs explicit review
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
  - url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support
    title: B850 AORUS ELITE WIFI7 (Rev. 1.x) Motherboard Support
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: GIGABYTE
    retrieved_at: 2026-06-20
    scope: support/download/manual landing page reference only for rev. 1.x
    versions: Rev. 1.x; page includes driver/BIOS listings that can change over time
    claim_supported: official support page exists for rev. 1.x URL family
    limitations: do not import binary versions without separate hash/version review
    license_or_terms_note: vendor website terms apply
    crawl_allowed: not assessed beyond normal page access
    hash_if_file: null
```

## Candidate patch plan for later review

Do not apply automatically. A later patch may update only URL fields and evidence notes after repository-local duplicate grep and diff review.

### Candidate replacements

```yaml
candidate_url_replacements:
  z890-aorus-master:
    official_product_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER
    support_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support
    manuals_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support#support-dl
    keep_revision_note: rev. 1.0 pending exact revision validation
  z890-aorus-elite-wifi7:
    official_product_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7
    support_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support
    manuals_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support#support-dl
    add_revision_note: official specifications distinguish PCB rev. 1.0 and 1.1 Wi-Fi modules
  x870e-aorus-master:
    official_product_url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER
    support_url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support
    manuals_url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support#support-dl
    keep_revision_note: rev. 1.0 pending exact revision validation
  x870-aorus-elite-wifi7-ice:
    official_product_url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11
    support_url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support
    manuals_url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support#support-dl
    revision_note: official current page is Rev. 1.0/1.1; separate Rev. 1.2 also exists
  b850-aorus-elite-wifi7:
    official_product_url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x
    support_url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support
    manuals_url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support#support-dl
    revision_note: official current page is Rev. 1.x; stored rev. 1.0 needs review before mutation
```

## Validation required before applying candidate replacements

1. Local clone / trusted repo action: grep exact old URLs and normalized device names across the whole repository.
2. Confirm each proposed URL returns a current official GIGABYTE page and is not a region-only redirect.
3. Check whether old `-rev-10` URLs redirect to proposed pages; store redirect evidence if available.
4. Validate that no device split is needed for separate PCB or board revisions.
5. Keep all driver/BIOS/firmware versions out of canonical records unless separately reviewed with version, date, checksum policy and risk note.
6. Update `devices.jsonl` only after diff review; update changelog only with exact changed fields.

## Rollback

If this proposal is not wanted, delete this file only:

`MEMORY/RUNS/DEVICES/2026-06-20_gigabyte_url_normalization_proposal_001.md`

No canonical files were changed by this proposal.

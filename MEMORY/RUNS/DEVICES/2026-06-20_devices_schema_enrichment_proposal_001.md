# Devices Schema Enrichment Proposal 001

run_id: DD-RUN-20260620-DEVICES-SCHEMA-ENRICHMENT-PROPOSAL-001
mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
created_at: 2026-06-20
status: PROPOSAL_ONLY
risk: LOW
data_loss_risk: NONE
canonical_records_changed: 0
candidate_records_changed: 0
binary_actions: 0
rehosting_actions: 0

## Scope

Continuation of the `devices-by-manufacturer` memory loop after the review-queue and GIGABYTE URL-normalization proposal.

This proposal prepares a schema/lifecycle enrichment plan for the 14 currently visible records in:

`MEMORY/HARDWARE/DEVICES/devices.jsonl`

No canonical data is changed by this file. The goal is to make the next patch reviewable before any direct mutation of `devices.jsonl`.

## Current state observed

The visible device records are compact `type: device` JSONL objects. They include fields such as:

- manufacturer_name
- manufacturer_normalized_name
- device_name
- device_normalized_name
- aliases
- model_numbers
- series
- device_categories
- chipset_or_soc
- CPU/GPU/memory/storage/networking notes
- operating_system_or_firmware_family
- official_product_url
- support_url
- manuals_url
- downloads_url
- source_urls
- evidence_note
- relevance_for_dr_debug
- first_added_utc
- last_verified_utc
- status: verified

The active schema/lifecycle policy requires richer factual metadata before status promotion, including at minimum:

- id
- family
- category
- title
- status
- confidence
- source_status
- validation_status
- canonical_path
- aliases
- created_at
- updated_at
- review_required
- sources

## Why this remains proposal-only

The existing records are useful and source-linked, but a direct rewrite of `devices.jsonl` would be a factual schema migration. That requires:

1. full repository duplicate grep;
2. exact affected-file diff;
3. review of source/status vocabulary compatibility;
4. URL-normalization review, especially for GIGABYTE revision-specific pages;
5. changelog update after the final diff is known;
6. rollback path for the canonical JSONL file.

This proposal therefore defines a candidate mapping and review queue only.

## Candidate schema mapping

Suggested field mapping for a later migration patch:

```yaml
field_mapping:
  id:
    value: "device:<manufacturer_normalized_name>:<device_normalized_name>"
    note: candidate stable identifier; confirm against any existing canonical ID policy before applying
  family:
    value: hardware
    note: maps device records into hardware memory family
  category:
    value: devices
    note: canonical path remains MEMORY/HARDWARE/DEVICES/devices.jsonl
  title:
    value: "<manufacturer_name> <device_name>"
    note: display title only; not source truth by itself
  status:
    value: keep existing verified until lifecycle vocabulary migration is reviewed
    note: do not silently map verified to CANONICAL or REVIEWED
  confidence:
    value: derive per-record from source quality and ambiguity
    note: HIGH only when exact official product/support page confirms model identity; MEDIUM when URL/revision ambiguity remains
  source_status:
    value: derive per-record
    note: official source confirmed, generic support pending, URL normalization pending, or review required
  validation_status:
    value: SOURCE_CONFIRMED or DRY_RUN_ONLY depending on exact page verification
    note: no hardware reproduction was performed
  canonical_path:
    value: MEMORY/HARDWARE/DEVICES/devices.jsonl
    note: index files remain navigation only
  aliases:
    value: keep existing aliases
    note: aliases must not create second truth
  created_at:
    value: first_added_utc
    note: preserve existing timestamp
  updated_at:
    value: last_verified_utc or migration timestamp after patch review
    note: avoid implying re-verification unless source check occurred
  review_required:
    value: true for records with generic support/download URLs, series records, or revision-sensitive URLs
    note: can be false only after exact source/status review
  sources:
    value: source_urls converted into source objects
    note: source object fields should include url, title, source_class, publisher, retrieved_at, scope, versions, claim_supported, limitations, license_or_terms_note, crawl_allowed, hash_if_file
```

## Per-record enrichment queue

| # | Candidate ID | Device | Proposed confidence | Proposed source_status | Proposed validation_status | review_required | Notes |
|---:|---|---|---|---|---|---|---|
| 1 | device:asus:tuf-gaming-z890-pro-wifi | ASUS TUF GAMING Z890-PRO WIFI | HIGH | OFFICIAL_PRODUCT_CONFIRMED_GENERIC_SUPPORT_PENDING | SOURCE_CONFIRMED | true | Product page official; support/download URLs are generic ASUS Download Center. |
| 2 | device:asus:prime-z890-p-wifi | ASUS PRIME Z890-P WIFI | HIGH | OFFICIAL_PRODUCT_AND_SUPPORT_CONFIRMED_GENERIC_DOWNLOAD_PENDING | SOURCE_CONFIRMED | true | Exact ASUS support URL exists; manuals/downloads still generic. |
| 3 | device:asus:pro-ws-wrx90e-sage-se | ASUS Pro WS WRX90E-SAGE SE | MEDIUM | OFFICIAL_PRODUCT_RECHECK_REQUIRED_GENERIC_SUPPORT_PENDING | DRY_RUN_ONLY | true | Stored official URL redirected during previous review session; exact product URL needs recheck. |
| 4 | device:asus:ex-b860m-v5 | ASUS EX-B860M-V5 | HIGH | OFFICIAL_PRODUCT_CONFIRMED_GENERIC_SUPPORT_PENDING | SOURCE_CONFIRMED | true | Product page official; support/download URLs generic. |
| 5 | device:asrock:z890-taichi-aqua | ASRock Z890 Taichi AQUA | HIGH | OFFICIAL_PRODUCT_CONFIRMED_GENERIC_SUPPORT_PENDING | SOURCE_CONFIRMED | true | Official product page exact; support_url points to generic ASRock support. |
| 6 | device:asrock:z890-taichi | ASRock Z890 Taichi | HIGH | OFFICIAL_PRODUCT_CONFIRMED_GENERIC_SUPPORT_PENDING | SOURCE_CONFIRMED | true | Official product page exact; support_url points to generic ASRock support. |
| 7 | device:asrock:x870e-taichi | ASRock X870E Taichi | HIGH | OFFICIAL_PRODUCT_CONFIRMED_GENERIC_SUPPORT_PENDING | SOURCE_CONFIRMED | true | Official product page exact; support_url points to generic ASRock support. |
| 8 | device:asrock:b850-steel-legend-wifi | ASRock B850 Steel Legend WiFi | HIGH | OFFICIAL_PRODUCT_CONFIRMED_GENERIC_SUPPORT_PENDING | SOURCE_CONFIRMED | true | Official product page exact; support_url points to generic ASRock support. |
| 9 | device:asrock:deskmini-x600-series | ASRock DeskMini X600 Series | MEDIUM-HIGH | OFFICIAL_SERIES_CONFIRMED_VARIANT_REVIEW_REQUIRED | SOURCE_CONFIRMED | true | Series-level record; avoid splitting X600/X600W without per-variant decision. |
| 10 | device:gigabyte:z890-aorus-master | GIGABYTE Z890 AORUS MASTER | MEDIUM | URL_NORMALIZATION_PENDING | DRY_RUN_ONLY | true | Current stored `-rev-10` URL family needs official redirect/current URL validation. |
| 11 | device:gigabyte:z890-aorus-elite-wifi7 | GIGABYTE Z890 AORUS ELITE WIFI7 | MEDIUM | URL_NORMALIZATION_AND_REVISION_NOTE_PENDING | DRY_RUN_ONLY | true | Current stored `-rev-10` URL family needs validation; official specs distinguish PCB Wi-Fi module revisions. |
| 12 | device:gigabyte:x870e-aorus-master | GIGABYTE X870E AORUS MASTER | MEDIUM | URL_NORMALIZATION_PENDING | DRY_RUN_ONLY | true | Current stored `-rev-10` URL family needs validation. |
| 13 | device:gigabyte:x870-aorus-elite-wifi7-ice | GIGABYTE X870 AORUS ELITE WIFI7 ICE | MEDIUM-HIGH | URL_NORMALIZATION_TO_REV_10_11_PENDING | DRY_RUN_ONLY | true | Proposed official current family is combined Rev. 1.0/1.1; separate Rev. 1.2 must not be merged. |
| 14 | device:gigabyte:b850-aorus-elite-wifi7 | GIGABYTE B850 AORUS ELITE WIFI7 | MEDIUM-HIGH | URL_NORMALIZATION_TO_REV_1X_PENDING | DRY_RUN_ONLY | true | Proposed official current family is Rev. 1.x; stored `rev. 1.0` mutation needs review. |

## Candidate source object template

A later migration should transform each `source_urls` list into source objects using this template:

```yaml
source_object_template:
  url: <source_url>
  title: <official page title or support page title>
  source_class: A_PRIMARY_OFFICIAL_VENDOR | B_SECONDARY_VENDOR_CONTEXT | DISCOVERY_ONLY
  publisher: ASUS | ASRock | GIGABYTE | other
  retrieved_at: <date of actual source verification>
  scope: <product identity, support landing page, specification page, manual reference, etc.>
  versions: <model revision, PCB revision, firmware page volatility, or null>
  claim_supported: <specific claim supported by this source>
  limitations: <generic support URL, revision ambiguity, dynamic BIOS/driver listings, region redirect, etc.>
  license_or_terms_note: vendor website terms apply
  crawl_allowed: not assessed beyond normal page access
  hash_if_file: null
```

## Proposed later patch order

1. Keep `devices.jsonl` untouched until full duplicate grep is available.
2. Apply GIGABYTE URL-normalization patch first, if accepted.
3. Add schema/lifecycle fields in a separate `devices.jsonl` migration patch.
4. Convert `source_urls` to rich `sources` objects only after source titles/scopes are verified.
5. Update indexes only after canonical JSONL has passed validation.
6. Update changelog with exact changed fields and commit SHA after write.

## Validation checklist for the eventual canonical patch

- Parse `devices.jsonl` as JSONL before and after patch.
- Check every record has required lifecycle fields.
- Check normalized IDs are unique.
- Check aliases do not duplicate canonical records.
- Check source URLs are official/vendor-classified where marked official.
- Check no binary download, firmware, driver, BIOS or installer was imported.
- Check index/navigation files still point to canonical path rather than duplicating facts.
- Check rollback can restore previous `devices.jsonl` exactly.

## Rollback

If this proposal is not wanted, delete this file only:

`MEMORY/RUNS/DEVICES/2026-06-20_devices_schema_enrichment_proposal_001.md`

No canonical records, source registry entries, indexes, binaries or changelog entries were modified by this proposal.

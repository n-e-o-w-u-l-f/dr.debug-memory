# GIGABYTE URL Normalization Review Decision 001

run_id: DD-RUN-20260620-GIGABYTE-URL-NORMALIZATION-REVIEW-DECISION-001
mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
created_at: 2026-06-20
status: REVIEW_DECISION_ONLY
risk: LOW
data_loss_risk: NONE
canonical_records_changed: 0
schema_migration_performed: false
rich_sources_conversion_performed: false
index_update_performed: false
binary_actions: 0
rehosting_actions: 0

## Enforced sequence

The following sequence is now treated as the active gate order for this device loop:

1. Review GIGABYTE URL normalization first.
2. Only after that, migrate `devices.jsonl` into the schema/lifecycle shape.
3. Convert `source_urls` into rich `sources` objects only after source-level verification.
4. Update index files only after canonical validation passes.

This file completes step 1 as a review decision. It does not modify `devices.jsonl`.

## Current canonical input reviewed

Visible canonical file reviewed:

`MEMORY/HARDWARE/DEVICES/devices.jsonl`

Visible GIGABYTE records currently use these stored URL families:

- `https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10`
- `https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10`
- `https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10`
- `https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10`
- `https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10`

## Official source review result

Official GIGABYTE pages reviewed on 2026-06-20 indicate the following target URL families:

| Device | Current stored URL family | Official reviewed URL family | Review decision | Apply readiness |
|---|---|---|---|---|
| Z890 AORUS MASTER | `/Z890-AORUS-MASTER-rev-10` | `/Z890-AORUS-MASTER` and `/Z890-AORUS-MASTER/support` | APPROVE_AS_NORMALIZATION_CANDIDATE | not applied; old URL redirect/history still needs local fetch evidence |
| Z890 AORUS ELITE WIFI7 | `/Z890-AORUS-ELITE-WIFI7-rev-10` | `/Z890-AORUS-ELITE-WIFI7`, `/support`, `/sp` | APPROVE_AS_NORMALIZATION_CANDIDATE_WITH_REVISION_NOTE | not applied; PCB rev. 1.0/1.1 Wi-Fi difference must be captured |
| X870E AORUS MASTER | `/X870E-AORUS-MASTER-rev-10` | `/X870E-AORUS-MASTER` and `/X870E-AORUS-MASTER/support` | APPROVE_AS_NORMALIZATION_CANDIDATE | not applied; old URL redirect/history still needs local fetch evidence |
| X870 AORUS ELITE WIFI7 ICE | `/X870-AORUS-ELITE-WIFI7-ICE-rev-10` | `/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11` and `/support` | APPROVE_AS_REVISION_FAMILY_CORRECTION_CANDIDATE | not applied; separate Rev. 1.2 must remain distinct |
| B850 AORUS ELITE WIFI7 | `/B850-AORUS-ELITE-WIFI7-rev-10` | `/B850-AORUS-ELITE-WIFI7-rev-1x` and `/support` | APPROVE_AS_REVISION_FAMILY_CORRECTION_CANDIDATE | not applied; changing model_numbers from rev. 1.0 to rev. 1.x needs explicit canonical diff |

## Source evidence notes

Source class used: official vendor pages only.

Reviewed official pages:

- `https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER`
- `https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support`
- `https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/sp`
- `https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7`
- `https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support`
- `https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/sp`
- `https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER`
- `https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support`
- `https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11`
- `https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support`
- `https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x`
- `https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support`
- `https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/sp`

The reviewed pages are sufficient to classify the proposed URL families as official GIGABYTE targets. They are not sufficient by themselves to perform silent canonical mutation because the old stored URLs need redirect/history validation and the repository needs a full duplicate/reference grep before canonical write.

## Approved candidate replacements for later canonical diff

Do not apply automatically. These are the only URL-family replacements approved for a later explicit `devices.jsonl` diff:

```yaml
approved_candidate_url_replacements:
  gigabyte/z890-aorus-master:
    official_product_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER
    support_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support
    manuals_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support#support-dl
    source_urls:
      - https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER
      - https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support
      - https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/sp
      - https://www.gigabyte.com/Support
    note: keep stored rev. 1.0 as review_required until old URL redirect/history is checked
  gigabyte/z890-aorus-elite-wifi7:
    official_product_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7
    support_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support
    manuals_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support#support-dl
    source_urls:
      - https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7
      - https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support
      - https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/sp
      - https://www.gigabyte.com/Support
    note: add review note for PCB rev. 1.0 MediaTek Wi-Fi 7 MT7925 vs PCB rev. 1.1 Realtek Wi-Fi 7 RTL8922AE
  gigabyte/x870e-aorus-master:
    official_product_url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER
    support_url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support
    manuals_url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support#support-dl
    source_urls:
      - https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER
      - https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support
      - https://www.gigabyte.com/Support
    note: keep stored rev. 1.0 as review_required until old URL redirect/history is checked
  gigabyte/x870-aorus-elite-wifi7-ice:
    official_product_url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11
    support_url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support
    manuals_url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support#support-dl
    source_urls:
      - https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11
      - https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support
      - https://www.gigabyte.com/Support
    note: update model/revision only in reviewed canonical diff; do not merge separate Rev. 1.2
  gigabyte/b850-aorus-elite-wifi7:
    official_product_url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x
    support_url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support
    manuals_url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support#support-manual
    downloads_url: https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support#support-dl
    source_urls:
      - https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x
      - https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support
      - https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/sp
      - https://www.gigabyte.com/Support
    note: changing stored rev. 1.0 to Rev. 1.x is a factual mutation and must be included explicitly in the canonical diff
```

## Gate decision

```yaml
gigabyte_url_normalization_reviewed: true
approved_for_future_explicit_diff: true
approved_for_silent_canonical_write: false
schema_migration_unblocked: partially
schema_migration_condition: only after explicit URL-normalization diff or documented decision to defer URL write
rich_sources_conversion_unblocked: false
index_update_unblocked: false
```

## Required next action

Next safe action is an explicit canonical diff proposal for `MEMORY/HARDWARE/DEVICES/devices.jsonl` that either:

1. applies only the approved URL-family replacements above; or
2. records a deliberate decision to defer URL mutation and proceeds with schema migration with `review_required: true` on all GIGABYTE records.

In both cases, `source_urls` must remain a simple list until rich source objects are source-verified record-by-record.

## Validation performed

- Current visible `devices.jsonl` reviewed for the five GIGABYTE stored URL families.
- Official GIGABYTE product/support/spec pages reviewed for the proposed target URL families.
- No binary driver, BIOS, firmware, utility, installer, PDF, manual or other file was downloaded, hashed or rehosted.
- No canonical file was changed.
- No index file was changed.
- Redaction check passed; no secrets, serial numbers, account data, customer data or raw crawl dumps included.

## Rollback

If this review decision is not wanted, delete this file only:

`MEMORY/RUNS/DEVICES/2026-06-20_gigabyte_url_normalization_review_decision_001.md`

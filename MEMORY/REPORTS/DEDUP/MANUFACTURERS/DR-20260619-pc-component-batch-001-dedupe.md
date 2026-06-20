---
report_id: DR-20260619-PC-COMPONENT-BATCH-001-DEDUPE
family: dedupe_report
category: manufacturers
title: Dedupe report for PC component manufacturer seed batch 001
status: REVIEW_READY
confidence: HIGH
source_status: REPOSITORY_SNAPSHOT_REVIEWED
validation_status: STATIC_DEDUPE_CHECK
canonical_path: /MEMORY/REPORTS/DEDUP/MANUFACTURERS/DR-20260619-pc-component-batch-001-dedupe.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
source_inputs:
  - /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-pc-component-manufacturers-batch-001.md
  - /MEMORY/MANUFACTURERS/manufacturers.jsonl
  - previously promoted single-profile manufacturer records from this review sequence
---

# Dedupe report: PC component manufacturer seed batch 001

## Summary

This report closes the bulk of the remaining PC component seed batch as dedupe/no-action/source-refresh work rather than additional promotion work. The remaining promotion candidates are limited to records that require a fresh official-source retry and relationship review.

## Counts

```yaml
counts:
  original_seed_candidates: 25
  duplicate_or_verified_jsonl_records: 10
  already_promoted_single_profiles_in_sequence: 12
  low_confidence_retry_candidates: 2
  relationship_reviews: 5
  promote_now: 0
  rehosting_actions: 0
  binary_downloads: 0
```

## Duplicate or verified in JSONL

```yaml
duplicate_or_verified_jsonl_records:
  - ASUS
  - ASRock
  - MSI
  - GIGABYTE
  - Intel
  - AMD
  - NVIDIA
  - Samsung Semiconductor Consumer Storage -> Samsung Semiconductor
  - Western Digital
  - Seagate -> Seagate Technology
  - Kingston -> Kingston Technology
```

Note: The count records Samsung Consumer Storage as a duplicate/alias-scope of Samsung Semiconductor and Kingston as Kingston Technology. Some names from the seed map to an existing canonical record with a slightly different display name.

## Already promoted in this review sequence

```yaml
already_promoted:
  - EVGA
  - Corsair
  - Crucial
  - G.SKILL
  - Seasonic
  - Noctua
  - Cooler Master
  - NZXT
  - Fractal Design
  - Phanteks
  - Thermaltake
  - LIAN LI
```

These should not be re-promoted. Any future work should be index/menu migration, source refresh, alias refinement or relationship review only.

## Retry-required candidates

```yaml
retry_required:
  - name: SK hynix
    reason: Seed had LOW confidence; support/download URL tool verification failed; Solidigm relationship requires review.
    allowed_next_action: official_source_retry_and_relationship_review
    disallowed_action: canonical_promotion_without_retry

  - name: be quiet!
    reason: Seed had LOW confidence; support/download URL verification failed.
    allowed_next_action: official_source_retry
    disallowed_action: canonical_promotion_without_retry
```

## Relationship-review queue

```yaml
relationship_review:
  - Kingston / HyperX / HP
  - Crucial / Micron
  - SK hynix / Solidigm
  - Western Digital / WD / SanDisk Professional
  - Samsung Semiconductor / Samsung SSD / Samsung Memory
```

## Classification matrix

```yaml
classifications:
  duplicate:
    - ASUS
    - ASRock
    - MSI
    - GIGABYTE
    - Intel
    - AMD
    - NVIDIA
    - Samsung Semiconductor Consumer Storage
    - Western Digital
    - Seagate
    - Kingston
  alias_only:
    - Samsung SSD
    - Samsung Memory
    - WD
    - SanDisk Professional
    - Kingston FURY
    - HyperX legacy
  source_refresh:
    - Western Digital
    - Seagate
    - Kingston
    - Samsung Semiconductor Consumer Storage
  relationship_review:
    - Kingston / HyperX / HP
    - Crucial / Micron
    - SK hynix / Solidigm
    - Western Digital / SanDisk Professional
    - Samsung Semiconductor / Samsung SSD / Samsung Memory
  low_confidence:
    - SK hynix
    - be quiet!
  retry_required:
    - SK hynix
    - be quiet!
  no_action:
    - EVGA
    - Corsair
    - Crucial
    - G.SKILL
    - Seasonic
    - Noctua
    - Cooler Master
    - NZXT
    - Fractal Design
    - Phanteks
    - Thermaltake
    - LIAN LI
```

## Safety and rehosting validation

- No drivers, firmware, BIOS files, installers, controller tools, utilities, manuals, PDFs, images or other binaries were downloaded.
- No files were hashed because no artifact files were downloaded for review.
- No archive.org item, public mirror or rehost was created.
- No raw crawl dumps were stored.
- No secrets, emails, customer data, serial numbers, invoices, cookies, tokens or account identifiers were stored.

## Recommended next commands

```bash
DRDEBUG_OWNER_ADMIN=TRUE !dd memory review manufacturers \
  --repo "n-e-o-w-u-l-f/dr.debug-memory" \
  --candidates "SK hynix,be quiet!" \
  --source-retry \
  --relationship-review "SK hynix/Solidigm" \
  --no-promote \
  --no-binary-downloads \
  --no-rehosting \
  --reason "Retry official sources for remaining low-confidence PC component manufacturer candidates before any promotion" \
  --apply
```

```bash
DRDEBUG_OWNER_ADMIN=TRUE !dd memory dedupe aliases \
  --repo "n-e-o-w-u-l-f/dr.debug-memory" \
  --targets "Kingston/HyperX/HP,Crucial/Micron,WD/SanDisk Professional,Samsung Semiconductor/Samsung SSD/Samsung Memory" \
  --no-promote \
  --reason "Create relationship-aware alias proposals without creating second manufacturer truths" \
  --apply
```

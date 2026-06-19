---
proposal_id: MP-20260619-MANUFACTURER-RELATIONSHIP-REVIEW
family: memory_proposal
category: manufacturers_relationship_review
title: Relationship-aware manufacturer alias review
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: OFFICIAL_AND_PRIMARY_SOURCES_REVIEWED
validation_status: STATIC_RELATIONSHIP_REVIEW
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-manufacturer-relationship-review.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
related_dedupe_report: /MEMORY/REPORTS/DEDUP/MANUFACTURERS/DR-20260619-pc-component-batch-001-dedupe.md
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# Manufacturer relationship review

## Scope

This proposal records relationship-aware alias and brand-scope decisions for manufacturer names discovered during the PC component seed-batch dedupe. It intentionally creates no new canonical manufacturer records and makes no status promotion.

## Relationship: Kingston / HyperX / HP

```yaml
relationship_id: relationship-kingston-hyperx-hp-20260619
classification: split_relationship
recommended_action: alias_relationship_note_not_duplicate_manufacturer
entities:
  Kingston Technology:
    role: existing memory/storage manufacturer
    handling: keep Kingston memory/storage scope canonical
  HyperX:
    role: gaming/peripheral brand formerly Kingston gaming division, acquired by HP
    handling: do not treat current HyperX peripheral scope as Kingston-only alias
  HP:
    role: current owner of HyperX gaming/peripheral business after 2021 acquisition
    handling: link HyperX peripheral scope to HP relationship note where relevant
source_records:
  - source_id: relationship-hp-hyperx-acquisition-20210601
    url: https://www.hp.com/us-en/newsroom/press-releases/2021/hp-inc-completes-acquisition-of-hyperx.html
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: HP Inc.
    retrieved_at: 2026-06-19
    claim_supported: HP announced completion of its acquisition of HyperX, described as the gaming division of Kingston Technology Company, on 2021-06-01.
limitations: Product-era matters. Pre-acquisition HyperX storage/memory/peripheral references may differ from post-acquisition HP HyperX support scope.
```

## Relationship: Crucial / Micron

```yaml
relationship_id: relationship-crucial-micron-20260619
classification: parent_brand_transition_relationship
recommended_action: relationship_note_not_duplicate_manufacturer
entities:
  Crucial:
    role: existing promoted consumer memory/storage brand profile
    handling: keep Crucial record but add transition-aware Micron relationship note later if needed
  Micron:
    role: parent/source relationship and enterprise memory/storage manufacturer
    handling: do not create duplicate Crucial-as-Micron second truth
source_records:
  - source_id: relationship-micron-crucial-consumer-brand-20260619
    url: https://www.micron.com/sales-support/sales-network/consumer-brand
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Micron
    retrieved_at: 2026-06-19
    claim_supported: Micron describes Crucial as its global consumer brand.
  - source_id: relationship-micron-crucial-exit-20251203
    url: https://investors.micron.com/news-releases/news-release-details/micron-announces-exit-crucial-consumer-business
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Micron
    retrieved_at: 2026-06-19
    claim_supported: Micron announced exit from the Crucial consumer business, with consumer-channel shipments through fiscal Q2 2026 and continued warranty service/support transition.
limitations: Treat as a current-transition relationship. Avoid permanent unqualified alias wording without dated scope.
```

## Relationship: Western Digital / WD / SanDisk Professional / G-DRIVE

```yaml
relationship_id: relationship-wd-sandisk-professional-gdrive-20260619
classification: brand_transition_source_refresh
recommended_action: source_refresh_and_alias_scope_note
entities:
  Western Digital:
    role: existing canonical storage manufacturer
    handling: keep as canonical manufacturer target
  WD:
    role: short alias/brand abbreviation
    handling: alias under Western Digital
  SanDisk Professional:
    role: professional creator-storage brand surface transitioning to G-DRIVE
    handling: relationship/brand-transition note, not new manufacturer truth
  G-DRIVE:
    role: current professional creator-storage brand surface after WD transition notice
    handling: brand-scope note under Western Digital context
source_records:
  - source_id: relationship-wd-gdrive-transition-20260219
    url: https://www.westerndigital.com/company/newsroom/press-releases/2026/2026-02-19-wd-unifies-its-professional-content-creator-storage-portfolio-under-g-drive-brand
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Western Digital
    retrieved_at: 2026-06-19
    claim_supported: Western Digital states SanDisk Professional hard drives are now G-DRIVE and support/product information remains available under the new name.
limitations: SanDisk consumer product lines and SanDisk Professional/G-DRIVE professional storage should not be conflated without product-specific source review.
```

## Relationship: Samsung Semiconductor / Consumer Storage / Samsung SSD / Samsung Memory

```yaml
relationship_id: relationship-samsung-semiconductor-consumer-storage-20260619
classification: alias_scope_under_existing_canonical
recommended_action: source_refresh_or_alias_scope_note
entities:
  Samsung Semiconductor:
    role: existing canonical manufacturer/source umbrella
    handling: keep as canonical target
  Samsung Consumer Storage:
    role: product/support scope under Samsung Semiconductor consumer-storage support
    handling: scope note, not new manufacturer
  Samsung SSD:
    role: product-family label
    handling: alias/scope only
  Samsung Memory:
    role: product-family label
    handling: alias/scope only
source_records:
  - source_id: relationship-samsung-consumer-storage-support-20260619
    url: https://semiconductor.samsung.com/consumer-storage/support/
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Samsung Semiconductor
    retrieved_at: 2026-06-19
    claim_supported: Samsung Semiconductor Consumer Storage Support provides SSD product guides, installation files, product manuals, tools/software, firmware, drivers and warranty resources.
  - source_id: relationship-samsung-tools-software-20260619
    url: https://semiconductor.samsung.com/consumer-storage/support/tools/
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Samsung Semiconductor
    retrieved_at: 2026-06-19
    claim_supported: Samsung Magician Software is described for Samsung memory products including internal SSDs, portable SSDs, memory cards and USB flash drives.
limitations: Firmware, driver and Samsung Magician software links are binary/reference-only and must not be rehosted by relationship records.
```

## Relationship: SK hynix / Solidigm

```yaml
relationship_id: relationship-skhynix-solidigm-20260619
classification: subsidiary_relationship_review
recommended_action: relationship_note_before_any_sk_hynix_promotion
entities:
  SK hynix:
    role: memory/storage manufacturer and parent relation for Solidigm
    handling: source retry passed, but relationship review remains required
  Solidigm:
    role: independent US-based subsidiary of SK hynix after Intel SSD/NAND sale
    handling: do not silently merge Solidigm product/support records into SK hynix consumer SSD record
source_records:
  - source_id: relationship-solidigm-skhynix-faq-20260619
    url: https://www.solidigm.com/support-page/faqs.html
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Solidigm
    retrieved_at: 2026-06-19
    claim_supported: Solidigm states it was created after Intel sold its SSD and NAND business to SK hynix and now operates as an independent US-based subsidiary of SK hynix.
limitations: Solidigm data-center/enterprise SSD products and support flows require separate manufacturer or brand-scope review rather than automatic SK hynix aliasing.
```

## Decision matrix

```yaml
promote_now: []
create_duplicate_manufacturer_records: false
relationship_notes_recommended:
  - Kingston / HyperX / HP
  - Crucial / Micron
  - Western Digital / SanDisk Professional / G-DRIVE
  - Samsung Semiconductor / Samsung SSD / Samsung Memory
  - SK hynix / Solidigm
allowed_followup:
  - alias relationship proposal files
  - source-refresh proposal files
  - one-manufacturer promotion proposal after relationship scope is resolved
disallowed_followup:
  - silent alias merge
  - second canonical manufacturer truth
  - binary download or public rehosting from relationship records
```

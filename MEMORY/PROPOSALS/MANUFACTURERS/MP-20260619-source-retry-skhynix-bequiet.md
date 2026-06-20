---
proposal_id: MP-20260619-SOURCE-RETRY-SKHYNIX-BEQUIET
family: memory_proposal
category: manufacturers_source_retry
title: Source retry for SK hynix and be quiet!
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: OFFICIAL_SOURCE_RETRY_PASSED
validation_status: SOURCE_CONFIRMED_NO_PROMOTION
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-source-retry-skhynix-bequiet.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
from_proposal: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-pc-component-manufacturers-batch-001.md
related_dedupe_report: /MEMORY/REPORTS/DEDUP/MANUFACTURERS/DR-20260619-pc-component-batch-001-dedupe.md
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# Source retry: SK hynix and be quiet!

## Scope

This proposal records official-source retry results for two previously low-confidence PC component manufacturer candidates. It intentionally performs no canonical promotion, no binary download, no manual download, no checksum claim and no rehosting.

## Gates applied

- Official sources only.
- No login or paywall bypass.
- No raw crawl dumps.
- No firmware, utility, installer, manual or PDF download.
- Source retry may support a later one-manufacturer promotion, but this proposal itself does not promote either candidate.

## Candidate: SK hynix

```yaml
candidate: SK hynix
aliases:
  - SK hynix Inc.
  - SK hynix SSD
source_retry_status: PASSED_WITH_BINARY_REFERENCE_LIMITATION
promotion_decision: DO_NOT_PROMOTE_FROM_THIS_PROPOSAL
confidence_after_retry: HIGH_FOR_SOURCE_EXISTENCE
relationship_review_required:
  - SK hynix / Solidigm
official_sources:
  - source_id: manufacturer-skhynix-ssd-home-20260619
    url: https://ssd.skhynix.com/
    title: SK hynix SSD
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: SK hynix
    retrieved_at: 2026-06-19
    claim_supported: Official SK hynix SSD site identifies consumer SSD products and links Drive Manager, firmware and update manual resources.
    limitations: Firmware and utility links are high-risk binary references only; no file was downloaded or rehosted.
  - source_id: manufacturer-skhynix-ssd-download-20260619
    url: https://ssd.skhynix.com/download/
    title: SK hynix SSD Download
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: SK hynix
    retrieved_at: 2026-06-19
    claim_supported: Official download page lists Drive Manager Easy Kit and firmware entries for Platinum P41 and Gold P31 SSDs.
    limitations: Download page is reference-only. Binary-specific records require exact model, firmware version, utility version, OS scope and checksum where available.
```

### SK hynix limitations

Firmware and SSD utility workflows can cause data-loss or device-risk conditions. Before any future model-specific record, require exact model, capacity, firmware version, utility version, OS scope, backup state and checksum if available. No SK hynix firmware, utility, PDF or installer was downloaded or rehosted.

## Candidate: be quiet!

```yaml
candidate: be quiet!
aliases:
  - Listan
  - Listan GmbH
source_retry_status: PASSED_WITH_MANUAL_AND_SOFTWARE_REFERENCE_LIMITATION
promotion_decision: DO_NOT_PROMOTE_FROM_THIS_PROPOSAL
confidence_after_retry: HIGH_FOR_SOURCE_EXISTENCE
official_sources:
  - source_id: manufacturer-bequiet-home-20260619
    url: https://www.bequiet.com/
    title: be quiet! official website
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: be quiet!
    retrieved_at: 2026-06-19
    claim_supported: Official be quiet! site identifies silent PSUs, cases and PC cooling products and states that product material includes manuals, pictures and videos.
    limitations: Product and region-specific support details require later scoped review.
  - source_id: manufacturer-bequiet-product-material-20260619
    url: https://www.bequiet.com/en/download/products
    title: be quiet! Product material
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: be quiet!
    retrieved_at: 2026-06-19
    claim_supported: Official product-material page states that current product material includes pictures, technical manuals and data sheets.
    limitations: Manuals, data sheets, images and PDFs are source references only; no file was downloaded or rehosted.
  - source_id: manufacturer-bequiet-software-20260619
    url: https://www.bequiet.com/en/software
    title: Software from be quiet!
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: be quiet!
    retrieved_at: 2026-06-19
    claim_supported: Official software page identifies IO Center features for LED customization, profile management, macros and key remapping.
    limitations: IO Center is software/controller utility reference-only. Binary-specific records require exact version, OS, compatible hardware and checksum where available.
```

### be quiet! limitations

PSUs involve mains/high-voltage risk. Dr.Debug must not suggest opening PSUs, bypassing protections or unsafe mains testing. Manuals, images, data sheets and IO Center software remain source references only; no be quiet! manual, software, firmware, installer, image or PDF was downloaded or rehosted.

## Result

```yaml
source_retry_result:
  SK_hynix: PASSED_RETRY_NO_PROMOTION
  be_quiet: PASSED_RETRY_NO_PROMOTION
promote_now: []
allowed_next_step:
  - one-manufacturer promotion proposal for SK hynix after Solidigm relationship decision
  - one-manufacturer promotion proposal for be quiet! after Listan alias review and PSU safety tagging
rehosting_actions: none
binary_downloads: none
manual_downloads: none
```

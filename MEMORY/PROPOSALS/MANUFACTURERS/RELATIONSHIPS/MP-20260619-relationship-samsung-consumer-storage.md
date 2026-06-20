---
proposal_id: MP-20260619-RELATIONSHIP-SAMSUNG-CONSUMER-STORAGE
family: memory_proposal
category: manufacturers_relationship_review
title: Samsung Semiconductor / Consumer Storage / Samsung SSD / Samsung Memory relationship proposal
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: OFFICIAL_SOURCE_REVIEWED
validation_status: STATIC_RELATIONSHIP_REVIEW
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-samsung-consumer-storage.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
from_review: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-manufacturer-relationship-review.md
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# Samsung Semiconductor / Consumer Storage / Samsung SSD / Samsung Memory relationship proposal

## Decision

```yaml
relationship_id: relationship-samsung-semiconductor-consumer-storage-20260619
classification: alias_scope_under_existing_canonical
create_duplicate_manufacturer_record: false
recommended_action: source_refresh_or_alias_scope_note
```

## Entity handling

```yaml
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
```

## Source records

```yaml
source_records:
  - source_id: relationship-samsung-consumer-storage-support-20260619
    url: https://semiconductor.samsung.com/consumer-storage/support/
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Samsung Semiconductor
    retrieved_at: 2026-06-19
    claim_supported: Samsung Semiconductor Consumer Storage Support provides SSD product guides, installation files, product manuals, tools/software, firmware, drivers and warranty resources.
    limitations: Firmware, driver, software and manual links are references only and must not be rehosted by this relationship record.
  - source_id: relationship-samsung-tools-software-20260619
    url: https://semiconductor.samsung.com/consumer-storage/support/tools/
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Samsung Semiconductor
    retrieved_at: 2026-06-19
    claim_supported: Samsung Magician Software is described for Samsung memory products including internal SSDs, portable SSDs, memory cards and USB flash drives.
    limitations: Samsung Magician, firmware, drivers, DC Toolkit and installation guides are binary/manual references only; no file was downloaded or rehosted.
```

## Follow-up

Future Samsung Consumer Storage records should update source URLs or product-scope metadata under Samsung Semiconductor. Avoid creating a second canonical manufacturer for Samsung SSD, Samsung Memory or Samsung Consumer Storage.

## Safety

No manufacturer promotion, binary download, manual download, hashing or rehosting is authorized by this relationship proposal.

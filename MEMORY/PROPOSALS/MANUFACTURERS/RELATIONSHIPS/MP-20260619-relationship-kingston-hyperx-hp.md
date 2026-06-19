---
proposal_id: MP-20260619-RELATIONSHIP-KINGSTON-HYPERX-HP
family: memory_proposal
category: manufacturers_relationship_review
title: Kingston / HyperX / HP relationship proposal
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: OFFICIAL_SOURCE_REVIEWED
validation_status: STATIC_RELATIONSHIP_REVIEW
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-kingston-hyperx-hp.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
from_review: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-manufacturer-relationship-review.md
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# Kingston / HyperX / HP relationship proposal

## Decision

```yaml
relationship_id: relationship-kingston-hyperx-hp-20260619
classification: split_relationship
create_duplicate_manufacturer_record: false
recommended_action: alias_relationship_note_not_duplicate_manufacturer
```

## Entity handling

```yaml
entities:
  Kingston Technology:
    role: existing memory/storage manufacturer
    handling: keep Kingston memory/storage scope canonical
  HyperX:
    role: gaming/peripheral brand formerly Kingston gaming division, acquired by HP
    handling: do not treat current HyperX peripheral scope as Kingston-only alias
  HP:
    role: current owner of HyperX gaming/peripheral business after 2021 acquisition
    handling: link post-acquisition HyperX peripheral scope to HP relationship note where relevant
```

## Source record

```yaml
source_records:
  - source_id: relationship-hp-hyperx-acquisition-20210601
    url: https://www.hp.com/us-en/newsroom/press-releases/2021/hp-inc-completes-acquisition-of-hyperx.html
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: HP Inc.
    retrieved_at: 2026-06-19
    claim_supported: HP announced completion of its acquisition of HyperX, described as the gaming division of Kingston Technology Company, on 2021-06-01.
    limitations: Product-era matters. Pre-acquisition HyperX memory/storage/peripheral references may differ from post-acquisition HP HyperX support scope.
```

## Follow-up

Future records should avoid silently merging current HyperX peripheral support into Kingston. If a product-specific record is added, record era, source URL, product family, support owner and whether the product is pre- or post-acquisition.

## Safety

No manufacturer promotion, binary download, manual download, hashing or rehosting is authorized by this relationship proposal.

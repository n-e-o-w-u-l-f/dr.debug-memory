---
proposal_id: MP-20260619-RELATIONSHIP-CRUCIAL-MICRON
family: memory_proposal
category: manufacturers_relationship_review
title: Crucial / Micron relationship proposal
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: OFFICIAL_SOURCE_REVIEWED
validation_status: STATIC_RELATIONSHIP_REVIEW
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-crucial-micron.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
from_review: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-manufacturer-relationship-review.md
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# Crucial / Micron relationship proposal

## Decision

```yaml
relationship_id: relationship-crucial-micron-20260619
classification: parent_brand_transition_relationship
create_duplicate_manufacturer_record: false
recommended_action: relationship_note_not_duplicate_manufacturer
```

## Entity handling

```yaml
entities:
  Crucial:
    role: existing promoted consumer memory/storage brand profile
    handling: keep Crucial record; add Micron relationship note if needed with date-scoped transition wording
  Micron:
    role: parent/source relationship and enterprise memory/storage manufacturer
    handling: do not create duplicate Crucial-as-Micron second truth
```

## Source records

```yaml
source_records:
  - source_id: relationship-micron-crucial-consumer-brand-20260619
    url: https://www.micron.com/sales-support/sales-network/consumer-brand
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Micron
    retrieved_at: 2026-06-19
    claim_supported: Micron describes Crucial as its global consumer brand.
    limitations: Web page may involve account/login UI elements, but the brand claim is public page text.
  - source_id: relationship-micron-crucial-exit-20251203
    url: https://investors.micron.com/news-releases/news-release-details/micron-announces-exit-crucial-consumer-business
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Micron
    retrieved_at: 2026-06-19
    claim_supported: Micron announced exit from the Crucial consumer business, consumer-channel shipments through fiscal Q2 2026 and continued warranty service/support transition.
    limitations: Treat as current-transition relationship; avoid permanent unqualified alias wording without dated scope.
```

## Follow-up

Future Crucial records should preserve Crucial as a consumer brand record while linking Micron as parent/source relationship. Any post-exit support or warranty references must be date-scoped and source-specific.

## Safety

No manufacturer promotion, binary download, manual download, hashing or rehosting is authorized by this relationship proposal.

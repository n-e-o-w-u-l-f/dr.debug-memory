---
proposal_id: MP-20260619-RELATIONSHIP-SKHYNIX-SOLIDIGM
family: memory_proposal
category: manufacturers_relationship_review
title: SK hynix / Solidigm relationship proposal
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: OFFICIAL_SOURCE_REVIEWED
validation_status: STATIC_RELATIONSHIP_REVIEW
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-skhynix-solidigm.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
from_review: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-manufacturer-relationship-review.md
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# SK hynix / Solidigm relationship proposal

## Decision

```yaml
relationship_id: relationship-skhynix-solidigm-20260619
classification: subsidiary_relationship_review
create_duplicate_manufacturer_record: false
recommended_action: relationship_note_before_any_sk_hynix_or_solidigm_promotion
```

## Entity handling

```yaml
entities:
  SK hynix:
    role: memory/storage manufacturer and parent relation for Solidigm
    handling: source retry passed, but relationship review is required before product/support scope merge
  Solidigm:
    role: independent US-based subsidiary of SK hynix after Intel SSD/NAND sale
    handling: do not silently merge Solidigm product/support records into SK hynix consumer SSD records
```

## Source record

```yaml
source_records:
  - source_id: relationship-solidigm-skhynix-faq-20260619
    url: https://www.solidigm.com/support-page/faqs.html
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Solidigm
    retrieved_at: 2026-06-19
    claim_supported: Solidigm states it was created after Intel sold its SSD and NAND business to SK hynix and now operates as an independent US-based subsidiary of SK hynix.
    limitations: Solidigm data-center/enterprise SSD products and support flows require separate manufacturer or brand-scope review rather than automatic SK hynix aliasing.
```

## Follow-up

Future SK hynix and Solidigm records should explicitly distinguish consumer SSD, enterprise/data-center SSD, inherited Intel SSD/NAND business, firmware/update tooling and support ownership. No Solidigm-specific product support should be silently folded into an SK hynix consumer SSD profile.

## Safety

No manufacturer promotion, binary download, manual download, hashing or rehosting is authorized by this relationship proposal.

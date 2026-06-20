---
proposal_id: MP-20260619-RELATIONSHIP-WD-SANDISK-PROFESSIONAL-GDRIVE
family: memory_proposal
category: manufacturers_relationship_review
title: Western Digital / SanDisk Professional / G-DRIVE relationship proposal
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: OFFICIAL_SOURCE_REVIEWED
validation_status: STATIC_RELATIONSHIP_REVIEW
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-wd-sandisk-professional-gdrive.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
from_review: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-manufacturer-relationship-review.md
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# Western Digital / SanDisk Professional / G-DRIVE relationship proposal

## Decision

```yaml
relationship_id: relationship-wd-sandisk-professional-gdrive-20260619
classification: brand_transition_source_refresh
create_duplicate_manufacturer_record: false
recommended_action: source_refresh_and_alias_scope_note
```

## Entity handling

```yaml
entities:
  Western Digital:
    role: existing canonical storage manufacturer
    handling: keep as canonical manufacturer target
  WD:
    role: short alias/brand abbreviation
    handling: alias under Western Digital where source supports it
  SanDisk Professional:
    role: professional creator-storage brand surface transitioning to G-DRIVE
    handling: relationship/brand-transition note, not new manufacturer truth
  G-DRIVE:
    role: current professional creator-storage brand surface after WD transition notice
    handling: brand-scope note under Western Digital context
```

## Source record

```yaml
source_records:
  - source_id: relationship-wd-gdrive-transition-20260219
    url: https://www.westerndigital.com/company/newsroom/press-releases/2026/2026-02-19-wd-unifies-its-professional-content-creator-storage-portfolio-under-g-drive-brand
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Western Digital
    retrieved_at: 2026-06-19
    claim_supported: Western Digital states products then branded as SanDisk Professional would transition to the G-DRIVE brand by the end of February 2026.
    limitations: SanDisk consumer product lines and SanDisk Professional/G-DRIVE professional storage should not be conflated without product-specific source review.
```

## Follow-up

Future WD/SanDisk/G-DRIVE records should be product-line-specific and date-scoped. Do not create separate manufacturer truths for SanDisk Professional or G-DRIVE from this relationship proposal alone.

## Safety

No manufacturer promotion, binary download, manual download, hashing or rehosting is authorized by this relationship proposal.

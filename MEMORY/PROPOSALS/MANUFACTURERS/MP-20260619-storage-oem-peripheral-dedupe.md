---
proposal_id: MP-20260619-STORAGE-OEM-PERIPHERAL-DEDUPE
family: memory_proposal
category: manufacturers_dedupe
title: Storage, OEM/platform and peripheral/controller dedupe triage for PC component seed batch 001
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: REPOSITORY_SNAPSHOT_REVIEWED
validation_status: STATIC_DEDUPE_CHECK
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-storage-oem-peripheral-dedupe.md
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
from_proposal: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-pc-component-manufacturers-batch-001.md
outputs:
  - /MEMORY/REPORTS/DEDUP/MANUFACTURERS/DR-20260619-pc-component-batch-001-dedupe.md
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# Storage, OEM/platform and peripheral/controller dedupe proposal

## Scope

This proposal classifies the remaining candidates from `MP-20260619-pc-component-manufacturers-batch-001` into dedupe, alias-only, source-refresh, relationship-review, low-confidence, retry-required and no-action buckets. It intentionally performs no manufacturer promotion, no binary download, no manual download and no rehosting.

## Gates applied

- Official-source seed proposal reviewed.
- Existing `MEMORY/MANUFACTURERS/manufacturers.jsonl` snapshot checked for visible canonical/verified entries.
- Previously promoted single-profile manufacturers are treated as no-action unless later index migration is requested.
- No second truth: duplicates and brand aliases are not promoted as new canonical manufacturers.
- Software, controller, firmware, BIOS, driver, installer and manual references remain source metadata only.

## Batch A: storage dedupe

```yaml
storage:
  - candidate: Samsung Semiconductor Consumer Storage
    aliases: [Samsung SSD, Samsung Memory]
    classification: duplicate_alias_scope
    canonical_target: Samsung Semiconductor
    action: alias_only_or_source_refresh
    reason: Samsung Semiconductor is already visible as a verified manufacturer with Samsung Memory and Samsung SSD aliases.
    next_step: add source-refresh proposal only if consumer-storage URLs need updated metadata.

  - candidate: Western Digital
    aliases: [WD, SanDisk Professional, Western Digital Corporation]
    classification: duplicate_with_alias_review
    canonical_target: Western Digital
    action: source_refresh_and_alias_review
    reason: Western Digital is already visible as a verified storage manufacturer; seed candidate had LOW confidence because support-page tool access was limited.
    next_step: verify WD/SanDisk Professional relationship and refresh support/download URLs without creating a new manufacturer.

  - candidate: Seagate
    aliases: [Seagate Technology]
    classification: duplicate_source_refresh
    canonical_target: Seagate Technology
    action: source_refresh_only
    reason: Seagate Technology is already visible as a verified storage manufacturer; seed candidate had LOW confidence because support-page tool access was limited.
    next_step: refresh support/download URLs and exact SeaTools/manual scope without creating a new manufacturer.

  - candidate: Kingston
    aliases: [Kingston Technology, Kingston FURY, HyperX legacy]
    classification: duplicate_relationship_review
    canonical_target: Kingston Technology
    action: alias_relationship_review
    reason: Kingston Technology is already visible as a verified manufacturer; HyperX also appears as an HP alias in the repository snapshot and needs relationship-aware handling.
    next_step: do not create a second Kingston or HyperX record; create alias/relationship note if needed.

  - candidate: Crucial
    aliases: [Crucial by Micron, Micron Crucial]
    classification: no_action_already_promoted_relationship_review
    canonical_target: MEMORY/MANUFACTURERS/CRUCIAL/PROFILE.md
    action: no_action
    reason: Crucial was already individually promoted; Micron relationship remains alias-aware review material.

  - candidate: SK hynix
    aliases: [SK hynix Inc., Solidigm legacy relationship requires review]
    classification: low_confidence_relationship_review
    canonical_target: TBD
    action: retry_required_before_promotion
    reason: Seed candidate had LOW confidence and tool access did not verify support URL; Solidigm legacy relationship requires review.
    next_step: retry official support/download source review and dedupe against any future Solidigm/Micron/storage records.
```

## Batch B: OEM/platform dedupe

```yaml
oem_platform:
  duplicate_no_action:
    - ASUS
    - ASRock
    - MSI
    - GIGABYTE
    - Intel
    - AMD
    - NVIDIA
  reason: These names are already visible as verified manufacturer records in `manufacturers.jsonl` and must not be recreated as second truths.
  allowed_followup: source_refresh_or_alias_update_proposal_only
```

## Batch C: peripheral/controller rest cases

```yaml
peripheral_controller:
  - candidate: be quiet!
    aliases: [Listan, be quiet]
    classification: low_confidence_retry_required
    canonical_target: TBD
    action: retry_required_before_promotion
    reason: Seed candidate had LOW confidence because support/download URL verification failed.
    next_step: retry official support/download/manual source review; no manual or binary rehosting.

  - candidate: EVGA
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/EVGA/PROFILE.md

  - candidate: Corsair
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/CORSAIR/PROFILE.md

  - candidate: G.SKILL
    classification: no_action_already_promoted_with_download_limitation
    canonical_target: MEMORY/MANUFACTURERS/GSKILL/PROFILE.md

  - candidate: Seasonic
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/SEASONIC/PROFILE.md

  - candidate: Noctua
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/NOCTUA/PROFILE.md

  - candidate: Cooler Master
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/COOLER_MASTER/PROFILE.md

  - candidate: NZXT
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/NZXT/PROFILE.md

  - candidate: Fractal Design
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/FRACTAL_DESIGN/PROFILE.md

  - candidate: Phanteks
    classification: no_action_already_promoted_with_source_limitations
    canonical_target: MEMORY/MANUFACTURERS/PHANTEKS/PROFILE.md

  - candidate: Thermaltake
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/THERMALTAKE/PROFILE.md

  - candidate: LIAN LI
    classification: no_action_already_promoted
    canonical_target: MEMORY/MANUFACTURERS/LIAN_LI/PROFILE.md
```

## Promotion decision

```yaml
promotion_decision:
  promote_now: []
  do_not_promote_duplicates:
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
  retry_required_before_any_promotion:
    - SK hynix
    - be quiet!
  relationship_review_required:
    - Kingston / HyperX / HP
    - Crucial / Micron
    - SK hynix / Solidigm
    - Western Digital / SanDisk Professional
    - Samsung Semiconductor / Samsung SSD / Samsung Memory
```

## Validation and next step

Next safe step is a source-retry pass for `SK hynix` and `be quiet!`, plus separate alias/relationship proposals for Kingston/HyperX/HP, Crucial/Micron, SK hynix/Solidigm, WD/SanDisk Professional and Samsung consumer-storage aliases. No canonical promotion should occur from this dedupe proposal alone.

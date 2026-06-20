# Batch 004 one-record promotion proposal — Supermicro

Status: PROPOSAL_READY_FOR_REVIEW
Mode: OWNER_ADMIN_MODE
Command: `DR_DEBUG_ADMIN=TRUE DRDEBUG_OWNER_ADMIN=TRUE !dd memory review manufacturers --repo "n-e-o-w-u-l-f/dr.debug-memory" --target "Batch-004 Supermicro one-record promotion proposal" --reason "Supermicro als Einzelkandidat nach sichtbarer Dedupe-Vorprüfung und offiziellen Herstellerquellen für eine One-record-Promotion-Proposal-Datei vorbereiten; keine Canonical-Promotion, keine Source-Registry-Änderung, keine Downloads" --apply`
Created: 2026-06-20
Family: MANUFACTURERS
Candidate: Supermicro
Risk: LOW
Data-loss-risk: NONE
Write scope: one-record promotion proposal only
Canonical records changed: 0
Source registry records changed: 0
Binary/download/rehosting actions: 0
Redaction: no secrets, account data, personal data, serials, raw logs or raw crawl dumps included

## Purpose

Prepare Supermicro as a single manufacturer candidate for human review before any later canonical write.

This proposal does not promote Supermicro to `CANONICAL`, does not edit `/MEMORY/MANUFACTURERS/manufacturers.jsonl`, and does not edit `/MEMORY/SOURCE_REGISTRY.md`.

## Prior review context

Batch-004 Group-A source review 001 marked Supermicro as `PROPOSAL_READY_FOR_REVIEW` with official vendor source support, while explicitly requiring full repo-wide duplicate search and reviewer approval before any canonical promotion.

## Candidate metadata draft

```json
{
  "type": "manufacturer",
  "name": "Supermicro",
  "normalized_name": "supermicro",
  "aliases": [
    "Super Micro Computer",
    "Super Micro Computer, Inc.",
    "Supermicro Computer"
  ],
  "categories": [
    "server",
    "mainboard",
    "bios_uefi",
    "firmware",
    "bmc",
    "embedded",
    "storage",
    "network"
  ],
  "country_or_region": "United States",
  "official_homepage_url": "https://www.supermicro.com/en/",
  "support_url": "https://www.supermicro.com/en/support",
  "manuals_or_downloads_url": "https://www.supermicro.com/en/support/resources/downloadcenter/swdownload",
  "security_url": "https://www.supermicro.com/en/support/security_center",
  "firmware_or_bios_lookup_url": "https://www.supermicro.com/support/resources/bios_ipmi.php",
  "source_class": "A_PRIMARY_OFFICIAL_VENDOR",
  "confidence": "HIGH",
  "source_status": "OFFICIAL_VENDOR_REVIEWED_PROPOSAL",
  "validation_status": "DRY_RUN_ONLY",
  "status": "PROPOSAL_READY_FOR_REVIEW",
  "canonical_path": "MEMORY/MANUFACTURERS/manufacturers.jsonl",
  "review_required": true,
  "canonical_ready": false
}
```

## Official source record drafts

### Source 1 — official home/support

```yaml
url: https://www.supermicro.com/en/support
title: Supermicro support
source_class: A_PRIMARY_OFFICIAL_VENDOR
publisher: Super Micro Computer, Inc.
retrieved_at: 2026-06-20
scope: Vendor support navigation for Supermicro products and resources
versions: not model-specific
claim_supported: Supermicro provides official support and resource navigation for products, downloads, manuals and technical support.
limitations: Support pages can be region/script rendered; later canonical promotion should re-check live page and exact URL behavior.
license_or_terms_note: Use as source metadata only; no content mirroring or raw crawl dump.
crawl_allowed: not assessed in this checkpoint
hash_if_file: not applicable
```

### Source 2 — official downloads/resource center

```yaml
url: https://www.supermicro.com/en/support/resources/downloadcenter/swdownload
title: Supermicro product resources / download center
source_class: A_PRIMARY_OFFICIAL_VENDOR
publisher: Super Micro Computer, Inc.
retrieved_at: 2026-06-20
scope: Software, resource and product-support download navigation
versions: not model-specific in this proposal
claim_supported: Supermicro provides official download/resource navigation for product support materials.
limitations: Download links can include high-risk binaries; do not download, hash or rehost without a separate model-specific owner review.
license_or_terms_note: Source pointer only; no binary redistribution claim.
crawl_allowed: not assessed in this checkpoint
hash_if_file: not applicable
```

### Source 3 — official BIOS/BMC lookup

```yaml
url: https://www.supermicro.com/support/resources/bios_ipmi.php
title: BIOS and BMC package lookup
source_class: A_PRIMARY_OFFICIAL_VENDOR
publisher: Super Micro Computer, Inc.
retrieved_at: 2026-06-20
scope: BIOS/BMC/microcode lookup page for Supermicro systems
versions: model-specific versions not imported in this proposal
claim_supported: Supermicro provides official BIOS/BMC package lookup by product/model.
limitations: Firmware/BIOS/BMC packages are high-risk binaries; no download, hash, compatibility or safety claim is made here.
license_or_terms_note: Source pointer only; no binary redistribution claim.
crawl_allowed: not assessed in this checkpoint
hash_if_file: not applicable
```

### Source 4 — official security center

```yaml
url: https://www.supermicro.com/en/support/security_center
title: Supermicro Security Center
source_class: A_PRIMARY_OFFICIAL_VENDOR
publisher: Super Micro Computer, Inc.
retrieved_at: 2026-06-20
scope: Product security updates, advisories and vulnerability information
versions: not model-specific in this proposal
claim_supported: Supermicro maintains an official security center for product security updates and information.
limitations: Later canonical promotion should re-check advisory scope and model applicability where relevant.
license_or_terms_note: Source metadata only; no advisory mirroring.
crawl_allowed: not assessed in this checkpoint
hash_if_file: not applicable
```

## Dedupe pre-check

Visible current repository checks performed during this proposal:

- `/MEMORY/MANUFACTURERS/manufacturers.jsonl` visible raw search: no text match for `Supermicro`.
- `/MEMORY/MANUFACTURERS/manufacturers.jsonl` visible raw search: no text match for `Super Micro`.
- `/MEMORY/SOURCE_REGISTRY.md` visible raw search: no text match for `Supermicro`.
- Existing Batch-004 Group-A review file already contains Supermicro as a proposal review candidate and explicitly states it is not canonical-ready.

This is not a full local repository grep. Before any later canonical write, run exact and normalized duplicate checks across at least:

- `Supermicro`
- `supermicro`
- `Super Micro Computer`
- `Super Micro Computer, Inc.`
- `Supermicro Computer`
- `supermicro.com`
- `www.supermicro.com`

## Alias and scope notes

Potential canonical name: `Supermicro`.

Potential aliases:

- `Super Micro Computer`
- `Super Micro Computer, Inc.`
- `Supermicro Computer`

Do not split product families, boards, server lines, BIOS/BMC package names or management software into separate manufacturer records unless separate evidence and schema rules require it.

## Risk and binary handling

Supermicro BIOS, BMC, microcode, drivers and management software are high-risk technical artifacts.

This proposal records URLs as source metadata only. It does not download, hash, verify, mirror, rehost, recommend flashing, or claim compatibility/safety for any binary.

## Review decision

Supermicro is ready for a human one-record promotion review, not for automatic canonical insertion.

Required before canonical write:

1. Full repo-wide grep/dedupe over canonical records, proposals, aliases, relationship notes and source registry.
2. Reviewer approval of alias list and canonical display name.
3. Source registry update or in-record source references using official vendor source class.
4. Validation status set according to the repository schema.
5. Changelog/index updates if the later canonical write requires them.

## Validation performed for this checkpoint

- Owner/Admin mode gate: passed.
- Repository status check: passed.
- Visible canonical duplicate pre-check performed for `Supermicro` and `Super Micro`.
- Visible source registry pre-check performed for `Supermicro`.
- Official vendor source review performed from Supermicro support, download/resource, BIOS/BMC and security pages.
- Redaction check: passed.
- Data-loss classification: NONE.
- No canonical manufacturer data changed.
- No source registry data changed.
- No binaries, downloads, archive uploads or rehosting actions performed.

## Rollback

Delete this single file:

`MEMORY/PROPOSALS/MANUFACTURERS/BATCH_004_PROMOTION_PROPOSAL_SUPERMICRO.md`

No canonical manufacturer records, source registry records, indexes or binary artifacts are changed by this checkpoint.

## Open risks

- Visible raw-file search is not a full local repository grep.
- Vendor pages can change, redirect by region or render content through scripts; re-check at canonical promotion time.
- Firmware, BIOS, BMC, driver and management-software links are high-risk binary pointers and must not be treated as validated safe artifacts.

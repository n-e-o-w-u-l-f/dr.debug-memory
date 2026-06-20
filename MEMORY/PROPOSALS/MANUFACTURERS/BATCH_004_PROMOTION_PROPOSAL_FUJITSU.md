# Batch 004 one-record promotion proposal — Fujitsu

Status: PROPOSAL_READY_FOR_REVIEW
Mode: OWNER_ADMIN_MODE
Command: `DR_DEBUG_ADMIN=TRUE DRDEBUG_OWNER_ADMIN=TRUE !dd memory review manufacturers --repo "n-e-o-w-u-l-f/dr.debug-memory" --target "Batch-004 Fujitsu one-record promotion proposal" --reason "Fujitsu als Einzelkandidat nach sichtbarer Dedupe-Vorprüfung und offiziellen Support-, Download- und Product-Security-Quellen für eine One-record-Promotion-Proposal-Datei vorbereiten; regionsabhängiges Support-Routing dokumentieren; keine Canonical-Promotion, keine Source-Registry-Änderung, keine Downloads" --apply`
Created: 2026-06-20
Family: MANUFACTURERS
Candidate: Fujitsu
Risk: LOW
Data-loss-risk: NONE
Write scope: one-record promotion proposal only
Canonical records changed: 0
Source registry records changed: 0
Binary/download/rehosting actions: 0
Redaction: no secrets, account data, personal data, serials, raw logs or raw crawl dumps included

## Purpose

Prepare Fujitsu as a single manufacturer candidate for human review before any later canonical write.

This proposal does not promote Fujitsu to `CANONICAL`, does not edit `/MEMORY/MANUFACTURERS/manufacturers.jsonl`, and does not edit `/MEMORY/SOURCE_REGISTRY.md`.

## Prior review context

Batch-004 Group-A source review 001 marked Fujitsu as `PROPOSAL_READY_FOR_REVIEW` with official vendor support, but with a support-routing limitation: region-specific support and Fsas/Fujitsu domain routing must be documented before any canonical promotion.

## Candidate metadata draft

```json
{
  "type": "manufacturer",
  "name": "Fujitsu",
  "normalized_name": "fujitsu",
  "aliases": [
    "Fujitsu Limited",
    "Fujitsu Technology Solutions",
    "Fsas Technologies",
    "Fujitsu Client Computing"
  ],
  "product_scope_aliases": [
    "PRIMERGY",
    "ETERNUS",
    "LIFEBOOK",
    "STYLISTIC",
    "ESPRIMO",
    "CELSIUS",
    "ScanSnap"
  ],
  "categories": [
    "laptop",
    "desktop",
    "server",
    "storage",
    "scanner",
    "printer",
    "bios_uefi",
    "firmware",
    "repair_manuals"
  ],
  "country_or_region": "Japan / global support regions",
  "official_homepage_url": "https://global.fujitsu/",
  "support_url": "https://global.fujitsu/en-global/support",
  "manuals_or_downloads_url": "https://support.ts.fujitsu.com/indexDownload.asp?lng=en",
  "security_url": "https://support.eu.fsastech.com/IndexProdSecurity.asp?lng=eu",
  "source_class": "A_PRIMARY_OFFICIAL_VENDOR",
  "confidence": "HIGH",
  "source_status": "OFFICIAL_VENDOR_REVIEWED_PROPOSAL_WITH_ROUTING_LIMITATION",
  "validation_status": "DRY_RUN_ONLY",
  "status": "PROPOSAL_READY_FOR_REVIEW",
  "canonical_path": "MEMORY/MANUFACTURERS/manufacturers.jsonl",
  "review_required": true,
  "canonical_ready": false
}
```

## Official source record drafts

### Source 1 — Fujitsu global support

```yaml
url: https://global.fujitsu/en-global/support
title: Fujitsu Global Support
source_class: A_PRIMARY_OFFICIAL_VENDOR
publisher: Fujitsu Limited
retrieved_at: 2026-06-20
scope: Global support routing for Fujitsu core computing products and regional support entry points
versions: not model-specific
claim_supported: Fujitsu provides official support routing for core computing products including notebooks, tablets, PCs, ScanSnap scanners, PRIMERGY servers, ETERNUS storage and printers.
limitations: Support is explicitly country/region-specific; canonical entry must preserve this support-routing limitation and avoid treating one regional endpoint as universal.
license_or_terms_note: Use as source metadata only; no content mirroring or raw crawl dump.
crawl_allowed: not assessed in this checkpoint
hash_if_file: not applicable
```

### Source 2 — Fujitsu/Fsas download support endpoint

```yaml
url: https://support.ts.fujitsu.com/indexDownload.asp?lng=en
title: Fujitsu/Fsas download support endpoint
source_class: A_PRIMARY_OFFICIAL_VENDOR
publisher: Fujitsu / Fsas Technologies support
retrieved_at: 2026-06-20
scope: Driver, BIOS and software-update navigation for Fujitsu/Fsas computer systems
versions: not model-specific in this proposal
claim_supported: The endpoint is the existing Fujitsu/Fsas support download entry used for driver, BIOS and software-update navigation.
limitations: Web fetch returned limited/internal-error output in this checkpoint; re-check in browser or local curl before canonical promotion. Download links can include high-risk binaries; do not download, hash or rehost without separate model-specific owner review.
license_or_terms_note: Source pointer only; no binary redistribution claim.
crawl_allowed: not assessed in this checkpoint
hash_if_file: not applicable
```

### Source 3 — Fsas/Fujitsu product security

```yaml
url: https://support.eu.fsastech.com/IndexProdSecurity.asp?lng=eu
title: Fsas Technologies / Fujitsu Product Security
source_class: A_PRIMARY_OFFICIAL_VENDOR
publisher: Fsas Technologies / Fujitsu
retrieved_at: 2026-06-20
scope: Product-specific IT security, advisories and security notices for Fujitsu/Fsas supported products
versions: not model-specific in this proposal
claim_supported: The page identifies the Fsas Technologies PSIRT as the Fujitsu entity responsible for product-specific IT security and references security advisories and security notices.
limitations: Page content is partly JavaScript-driven; later canonical promotion should re-check advisory navigation and model scope.
license_or_terms_note: Source metadata only; no advisory mirroring.
crawl_allowed: not assessed in this checkpoint
hash_if_file: not applicable
```

## Dedupe pre-check

Visible current repository checks performed during this proposal:

- `/MEMORY/MANUFACTURERS/manufacturers.jsonl` visible raw search: no text match for `Fujitsu`.
- `/MEMORY/MANUFACTURERS/manufacturers.jsonl` visible raw search: no text match for `Fujitsu Limited`.
- `/MEMORY/SOURCE_REGISTRY.md` visible raw search: no text match for `Fujitsu`.
- Existing Batch-004 Group-A review file already contains Fujitsu as a proposal review candidate and explicitly states it is not canonical-ready.

This is not a full local repository grep. Before any later canonical write, run exact and normalized duplicate checks across at least:

- `Fujitsu`
- `fujitsu`
- `Fujitsu Limited`
- `Fujitsu Technology Solutions`
- `Fujitsu Client Computing`
- `Fsas Technologies`
- `support.ts.fujitsu.com`
- `support.eu.fsastech.com`
- `global.fujitsu`

## Alias, corporate-scope and product-scope notes

Potential canonical name: `Fujitsu`.

Potential corporate aliases / related support-routing names:

- `Fujitsu Limited`
- `Fujitsu Technology Solutions`
- `Fsas Technologies`
- `Fujitsu Client Computing`

Product-line names must not be promoted as separate manufacturer records without separate evidence and schema justification:

- `PRIMERGY`
- `ETERNUS`
- `LIFEBOOK`
- `STYLISTIC`
- `ESPRIMO`
- `CELSIUS`
- `ScanSnap`

Support-routing limitation:

- Fujitsu core computing product support is country/region-specific.
- European/German support and product-security pages can route through Fsas Technologies domains.
- The later canonical record should preserve both Fujitsu global identity and regional support endpoint behavior.

## Risk and binary handling

Fujitsu/Fsas BIOS, firmware, drivers, software updates and vendor tools are high-risk technical artifacts.

This proposal records URLs as source metadata only. It does not download, hash, verify, mirror, rehost, recommend flashing, or claim compatibility/safety for any binary.

## Review decision

Fujitsu is ready for a human one-record promotion review, not for automatic canonical insertion.

Required before canonical write:

1. Full repo-wide grep/dedupe over canonical records, proposals, aliases, relationship notes and source registry.
2. Reviewer approval of alias list, corporate scope and support-routing language.
3. Source registry update or in-record source references using official vendor source class.
4. Validation status set according to repository schema.
5. Changelog/index updates if the later canonical write requires them.

## Validation performed for this checkpoint

- Owner/Admin mode gate: passed.
- Repository status check: passed.
- Visible canonical duplicate pre-check performed for `Fujitsu` and `Fujitsu Limited`.
- Visible source registry pre-check performed for `Fujitsu`.
- Official vendor source review performed from Fujitsu global support and Fsas/Fujitsu product-security pages.
- Download endpoint recorded only with limitation because web fetch was restricted/incomplete during this checkpoint.
- Redaction check: passed.
- Data-loss classification: NONE.
- No canonical manufacturer data changed.
- No source registry data changed.
- No binaries, downloads, archive uploads or rehosting actions performed.

## Rollback

Delete this single file:

`MEMORY/PROPOSALS/MANUFACTURERS/BATCH_004_PROMOTION_PROPOSAL_FUJITSU.md`

No canonical manufacturer records, source registry records, indexes or binary artifacts are changed by this checkpoint.

## Open risks

- Visible raw-file search is not a full local repository grep.
- Fujitsu support is region-specific and can route through partner/group-company domains.
- Vendor pages can change, redirect by region or render content through scripts; re-check at canonical promotion time.
- BIOS, firmware, driver and vendor-tool links are high-risk binary pointers and must not be treated as validated safe artifacts.

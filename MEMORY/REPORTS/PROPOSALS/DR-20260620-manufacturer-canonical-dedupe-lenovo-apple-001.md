# DR-20260620-manufacturer-canonical-dedupe-lenovo-apple-001

Status: APPLIED_REPORT
Mode: OWNER_ADMIN_MODE
Command: memory loop known-artifacts continuation
Continuation from: `MEMORY cursor: known_artifacts/manufacturer-security-source-batch-001-indexed; next=canonical-dedupe-batch-lenovo-apple-or-next-official-source-batch; batch-size=2-or-25`
Created: 2026-06-20
Repository: n-e-o-w-u-l-f/dr.debug-memory
Artifact class: MANUFACTURER_CANONICAL_DEDUPE_REVIEW
Reviewed contexts: Lenovo, Apple
Precursor review: `/MEMORY/REPORTS/PROPOSALS/DR-20260620-manufacturer-source-batch-001-review.md`

## Scope

This report reviews Lenovo and Apple as the two strongest candidates from manufacturer source batch 001. It is a canonical-dedupe and routing review only. It does not create canonical manufacturer records, does not write `MEMORY/SOURCE_REGISTRY.md`, does not promote proposal status, does not download files and does not rehost firmware, drivers, BIOS, installers, manuals or vendor tools.

## Repository-state note

A current raw read of `/MEMORY/INDEX.md` confirms `MANUFACTURERS` is a canonical family and indexes must not become second truth. A current raw read of `/MEMORY/PROPOSALS/BATCHES/INDEX.md` appears stale and lists only the older manufacturer seed batch; previous tool writes showed later proposal-index updates. Because of that branch/view inconsistency, this pass writes only this isolated review file and does not overwrite navigation or changelog state.

## Review principles

- Canonical manufacturer identity is not the same as product-family identity.
- Official support, downloads, manuals and security pages are strong source evidence, but canonical promotion still requires dedupe against existing canonical IDs and aliases.
- Acquisition history and product-family naming must be handled as aliases or scoped product-family notes, not as duplicate manufacturer records.
- Driver, firmware, BIOS, installer and vendor-tool contexts remain high-risk binary/source-link-only contexts.

## Lenovo dedupe review

### Candidate identity

- canonical_name_candidate: `Lenovo`
- likely_canonical_entity: `Lenovo Group / Lenovo manufacturer context`
- aliases_or_scoped_names: `Lenovo Group; Lenovo PC Support; ThinkPad; ThinkCentre; IdeaPad; Legion; Yoga; Moto/Motorola contexts require separate review if mobile scope is included`
- official support/download source status: `OFFICIAL_SOURCE_ACCEPTABLE_FOR_REVIEW`
- official security source status: `OFFICIAL_SOURCE_ACCEPTABLE_FOR_REVIEW`
- current review decision: `CANONICAL_DEDUPE_READY_BUT_NOT_PROMOTED`

### Dedupe blockers

- ThinkPad, ThinkCentre, IdeaPad, Yoga and Legion are product families, not separate manufacturers by default.
- IBM/ThinkPad acquisition history must be represented as alias/history context only, unless an existing canonical schema uses lineage records.
- Motorola/Moto mobile contexts should not be folded into Lenovo PC manufacturer records without explicit schema routing, because mobile support/security/update lifecycles may differ.
- Direct BIOS/firmware/driver portals remain product/model gated and must not be converted into direct binary records without model, version, retrieved_at and checksum from owner workflow.

### Proposed canonical routing, not applied

- Route manufacturer identity to one canonical Lenovo manufacturer record after checking existing `MANUFACTURERS` records.
- Treat product lines as aliases or product-family navigation under Lenovo, not as manufacturer records.
- Treat Lenovo product security page as a source candidate scoped to Lenovo product security, not as proof that any individual device is affected or fixed.
- Defer any Moto/Motorola relation until mobile-manufacturer scope is explicitly reviewed.

## Apple dedupe review

### Candidate identity

- canonical_name_candidate: `Apple`
- likely_canonical_entity: `Apple Inc. / Apple manufacturer and platform vendor context`
- aliases_or_scoped_names: `Apple Inc.; Apple Support; Mac; iPhone; iPad; Apple Watch; Apple TV; Vision Pro; macOS; iOS; iPadOS; watchOS; tvOS; visionOS`
- official support/docs/manuals source status: `OFFICIAL_SOURCE_ACCEPTABLE_FOR_REVIEW`
- official security releases source status: `OFFICIAL_SOURCE_ACCEPTABLE_FOR_REVIEW`
- current review decision: `CANONICAL_DEDUPE_READY_BUT_NOT_PROMOTED`

### Dedupe blockers

- Apple product lines and operating systems are not separate manufacturers.
- Apple Support, Apple Docs and Apple Security Releases are source surfaces, not canonical manufacturer identities.
- Security release entries are OS/device/version scoped and must not be generalized across all Apple devices.
- Apple installers, firmware, IPSW-style images, software updates and vendor tools must not be mirrored or stored as binaries without explicit legal/preservation review and owner workflow evidence.

### Proposed canonical routing, not applied

- Route manufacturer/platform identity to one canonical Apple manufacturer/vendor record after checking existing `MANUFACTURERS` records.
- Store Apple Support/Docs and Apple Security Releases as bounded source records only after source-registry review.
- Treat product and OS names as aliases, product-family records or platform records depending on schema conventions.
- Preserve device/OS/version scoping for all security and update claims.

## Combined dedupe decision

| Context | Decision | Reason |
|---|---|---|
| Lenovo | CANONICAL_DEDUPE_READY_BUT_NOT_PROMOTED | Strong official support/download/security sources exist, but existing canonical manufacturer records and alias/product-family routing were not inspected conclusively in this pass. |
| Apple | CANONICAL_DEDUPE_READY_BUT_NOT_PROMOTED | Strong official support/docs/security sources exist, but canonical schema placement and product/OS alias routing need explicit review. |

## Proposed next actions

1. Read current `MANUFACTURERS` canonical area and identify exact canonical path conventions.
2. Search for existing Lenovo/Apple aliases, regional portals, product-family records and source IDs.
3. If no conflicts exist, prepare a proposal-only canonical import diff for Lenovo and Apple with aliases and source references.
4. Keep all direct drivers, firmware, BIOS, installers, software updates and vendor tools as source-link metadata only.

## Validation performed

- Owner gate: passed for this report write workflow.
- Repository status: read/write/push capability observed before write planning.
- Source hierarchy posture: Lenovo and Apple were selected from prior official-source/security-source proposal batches.
- Dedupe posture: no canonical IDs created; alias/product-family conflicts explicitly deferred.
- Redaction check: no serial numbers, Service Tags, SNIDs, Apple IDs, customer data, credentials, private hosts, raw logs or raw crawl dumps added.
- Binary/rehosting check: no binaries, firmware, drivers, BIOS, installers, manuals, software updates, checksums, archive uploads or rehosting artifacts added.
- Status lifecycle check: review only; no canonical, reviewed, imported or source-registry status promotion.

## Cursor update

Next resume cursor: `MEMORY cursor: known_artifacts/manufacturer-canonical-dedupe-lenovo-apple-001-complete; next=read-manufacturers-canonical-area-or-next-official-source-batch; batch-size=2-or-25`

## Rollback

Delete this report file. No canonical records, source-registry records, index entries, changelog entries, binaries, archive uploads, status promotions or broad reclassifications need rollback from this pass.

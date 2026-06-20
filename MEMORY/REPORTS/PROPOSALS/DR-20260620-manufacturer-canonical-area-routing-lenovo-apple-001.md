# DR-20260620-manufacturer-canonical-area-routing-lenovo-apple-001

Status: APPLIED_REPORT
Mode: OWNER_ADMIN_MODE
Command: memory loop known-artifacts continuation
Continuation from: `MEMORY cursor: known_artifacts/manufacturer-canonical-dedupe-lenovo-apple-001-complete; next=read-manufacturers-canonical-area-or-next-official-source-batch; batch-size=2-or-25`
Created: 2026-06-20
Repository: n-e-o-w-u-l-f/dr.debug-memory
Artifact class: MANUFACTURER_CANONICAL_AREA_ROUTING_REPORT
Reviewed contexts: Lenovo, Apple

## Scope

This report records a read-only routing decision after inspecting the current MANUFACTURERS canonical area. It does not create canonical manufacturer records, does not edit `manufacturers.jsonl`, does not edit `MEMORY/SOURCE_REGISTRY.md`, does not promote statuses, does not download files and does not rehost firmware, drivers, BIOS, installers, manuals or vendor tools.

## Canonical area read

Observed repository structure:

- `MEMORY/INDEX.md` declares `MANUFACTURERS` as a canonical family and says index files are navigation only.
- `MEMORY/MANUFACTURERS/README.md` states that canonical manufacturer data is stored in `/MEMORY/MANUFACTURERS/manufacturers.jsonl` and that index/category/country/alias/research files are navigation or support files.
- `MEMORY/MANUFACTURERS/INDEX.md` states that canonical data is in `manufacturers.jsonl` and that the index is navigation only.
- `MEMORY/MANUFACTURERS/manufacturers.jsonl` already contains a verified Lenovo entry.
- `MEMORY/MANUFACTURERS/INDEX.md` already lists Lenovo.
- `MEMORY/MANUFACTURERS/manufacturers_aliases.md` already lists Lenovo aliases including `Lenovo Group`, `ThinkPad`, `Legion` and `Motorola Mobility`.
- Search/read checks found no Apple entry in `manufacturers.jsonl`, no Apple listing in `MEMORY/MANUFACTURERS/INDEX.md`, and no Apple alias entry in `manufacturers_aliases.md` during this pass.

## Routing decision

| Context | Current canonical-area state | Decision | Safe next action |
|---|---|---|---|
| Lenovo | Existing verified canonical manufacturer entry in `manufacturers.jsonl`; listed in `INDEX.md`; aliases exist in `manufacturers_aliases.md`. | DO_NOT_CREATE_NEW_CANONICAL_RECORD | Prepare a narrowly scoped update proposal only if adding refreshed official support/security source metadata, and dedupe against the existing Lenovo record. |
| Apple | No canonical manufacturer entry found in `manufacturers.jsonl`, `INDEX.md` or `manufacturers_aliases.md` during this pass. | NEW_CANONICAL_CANDIDATE_PROPOSAL_ELIGIBLE | Prepare a proposal-only Apple manufacturer candidate, not direct canonical promotion, with aliases and official source references. |

## Lenovo notes

The existing Lenovo canonical row already covers laptop, desktop, server, storage, network, smartphone, tablet, Android device, BIOS/UEFI, firmware, gaming and repair-manual categories. Product-family aliases are already present. A future Lenovo update should avoid creating duplicate manufacturer identity and should instead propose updates against the existing record.

Recommended Lenovo update proposal scope, not applied:

- Add or refresh official security source metadata from the manufacturer security-source batch.
- Review whether `Motorola Mobility` should remain an alias in the Lenovo manufacturer row or be moved to a scoped mobile/manufacturer relation later.
- Preserve `ThinkPad`, `Legion` and similar names as product-family aliases/navigation unless schema review creates product-family records.
- Do not store direct BIOS/firmware/driver packages without exact model, version, retrieved_at and checksum from owner workflow.

## Apple notes

Apple has strong official source candidates from earlier proposal batches but no canonical manufacturer row was found in the current MANUFACTURERS canonical area. Apple is therefore eligible for a proposal-only manufacturer candidate.

Recommended Apple proposal scope, not applied:

- canonical_name_candidate: `Apple`
- normalized_name: `apple`
- aliases: `Apple Inc.; Apple Support; Mac; iPhone; iPad; Apple Watch; Apple TV; Vision Pro`
- category candidates: `laptop; desktop; smartphone; tablet; wearable; operating_system; firmware; repair_manuals; peripheral; soc`
- source candidates: Apple official home, Apple Support, Apple Documentation/Manuals, Apple Security Releases.
- limitations: product and OS names are not separate manufacturers; security release claims remain OS/device/version scoped; installers, firmware, IPSW-style images and software updates are not rehosted without explicit preservation/legal review.

## Proposed next batch

`manufacturer-apple-canonical-proposal-001` should prepare a proposal-only Apple candidate file. It should not write directly to `manufacturers.jsonl` unless a later command explicitly requests review/import and the current repository state is re-read immediately before writing.

## Validation performed

- Owner gate: passed for this report write workflow.
- Repository status: read/write/push capability observed before write planning.
- Current repository read: `MEMORY/INDEX.md`, `MEMORY/MANUFACTURERS/README.md`, `MEMORY/MANUFACTURERS/INDEX.md`, `manufacturers.jsonl`, `manufacturers_aliases.md`, and `candidates_needing_review.md` were inspected through current GitHub/raw reads.
- Dedupe posture: Lenovo duplicate canonical creation explicitly blocked; Apple marked proposal-eligible only.
- Redaction check: no serial numbers, Service Tags, SNIDs, Apple IDs, customer data, credentials, private hosts, raw logs or raw crawl dumps added.
- Binary/rehosting check: no binaries, firmware, drivers, BIOS, installers, manuals, software updates, checksums, archive uploads or rehosting artifacts added.
- Status lifecycle check: routing report only; no canonical, reviewed, imported or source-registry status promotion.

## Cursor update

Next resume cursor: `MEMORY cursor: known_artifacts/manufacturer-canonical-area-routing-lenovo-apple-001-complete; next=apple-manufacturer-proposal-or-next-official-source-batch; batch-size=1-or-25`

## Rollback

Delete this report file. No canonical records, source-registry records, index entries, changelog entries, binaries, archive uploads, status promotions or broad reclassifications need rollback from this pass.

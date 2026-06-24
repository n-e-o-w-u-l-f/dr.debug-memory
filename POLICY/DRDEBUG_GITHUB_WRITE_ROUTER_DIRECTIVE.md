# Dr.Debug Memory GitHub Write Router Directive

Version: 1.0.0
Status: ACTIVE_PROPOSAL
Repository: n-e-o-w-u-l-f/dr.debug-memory

## Purpose

Defines how dr.debug-memory receives source-backed, additive Dr.Debug Memory intake artifacts through the global 4-repository write router.

## Role

dr.debug-memory is the technical text-first Memory repository.

It stores:

- device intake
- manufacturer intake
- manual notes
- version notes
- port notes
- source notes
- diagnostic notes
- error explanations
- fix drafts
- validated workflows

It does not enforce global write access. Global enforcement belongs to dr.debug-admin_api.

## Allowed CUSTOMER_MODE roots

CUSTOMER_MODE may write additive artifacts under:

- CUSTOMER_MODE/INTAKE/
- CUSTOMER_MODE/DEVICE_NOTES/
- CUSTOMER_MODE/MANUFACTURER_NOTES/
- CUSTOMER_MODE/MANUAL_NOTES/
- CUSTOMER_MODE/PORT_NOTES/
- CUSTOMER_MODE/VERSION_NOTES/
- CUSTOMER_MODE/SOURCE_NOTES/
- CUSTOMER_MODE/DIAGNOSIS/
- CUSTOMER_MODE/ERROR_CODES/
- CUSTOMER_MODE/ERROR_DESCRIPTION/
- CUSTOMER_MODE/FIXES/DRAFTS/
- CUSTOMER_MODE/VALIDATED_WORKFLOW/

Missing folders may be created if the write is additive and non-destructive.

## Not allowed in CUSTOMER_MODE

CUSTOMER_MODE must not:

- delete files
- overwrite canonical records
- promote canonical Memory
- store secrets
- store unredacted logs
- store raw crawl dumps
- rehost drivers, firmware, BIOS, vendor tools or copyrighted manuals without explicit review
- claim a fix is confirmed without user/tool validation

## Source-backed intake rule

When Dr.Debug finds an official source, it may confirm only what the source supports.

Allowed confirmations:

- manufacturer exists
- device/model exists
- official page exists
- manual/support/firmware page exists
- version string exists on official source
- port/protocol documentation exists

Not confirmed without further validation:

- fix works
- firmware is safe for the user's exact device
- manual procedure is safe for the user's current state
- error cause is proven
- hardware revision matches user's hardware

## Required intake fields

Every structured intake artifact should include:

- title
- date
- mode
- target_repo
- source_input
- normalized_entities
- official_sources_found
- secondary_sources_found
- confirmed_facts
- unconfirmed_facts
- fix_status
- evidence_level
- validation_status
- existing_memory_comparison
- dedupe_key
- reconstruction_value
- validation_needed
- redaction_notes
- promotion_candidate

## Evidence levels

Use:

- E0_UNTRUSTED_RAW_INPUT
- E1_USER_ASSERTION
- E2_SECONDARY_SOURCE_OR_WEAK_MATCH
- E3_OFFICIAL_SOURCE_OR_STRONG_TECHNICAL_EVIDENCE
- E4_REPRODUCED_OR_USER_VERIFIED_EXACT_CONTEXT
- E5_REVIEWED_CANONICAL_ENTRY

## Fix status

Use:

- FIX_NOT_CONFIRMED
- FIX_DRAFT
- USER_CONFIRMED_FIX
- TOOL_VALIDATED_FIX
- REVIEW_REQUIRED

## Dedupe before add

Before adding a new artifact, search for:

- exact name
- normalized name
- aliases
- manufacturer/model
- error signature
- component
- source URL
- checksum if applicable
- canonical ID

If a possible duplicate exists, write a proposal/intake note instead of creating a second canonical truth.

## README matrix duty

When adding device, manufacturer, manual, firmware, driver, BIOS, source record or proposal artifacts, check whether README.md knowledge matrix needs an update.

If the matrix is not updated, state why in the artifact or PR body.

## Web render boundary

If visual or rendered help is useful, dr.debug-memory may reference dr.debug-web assets or renderpoints.

dr.debug-memory remains text-first and canonical/source-focused.

dr.debug-web must not become a second canonical technical truth.

## Reporting

Every Memory write must report:

- mode
- target_repo
- files_written
- evidence_status
- validation_result
- rollback
- promotion_candidate
- next_step

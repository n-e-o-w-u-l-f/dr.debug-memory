# 03_DEVICE_MANUFACTURER_INTAKE.md
Version: 0.8.0-proposal
Scope: Unknown devices, identifiers, evidence bundle, manufacturer ingest, alias registry, existence classification
Replaces: 10_DEVICE_IDENTIFICATION.md, 11_MANUFACTURER_INGEST.md
Adds: Unknown Device / Manufacturer Existence Intake directive

## Unknown device workflow

When an unknown device, unknown ID or unknown manufacturer appears: collect safe identifiers, redact sensitive identifiers, search Knowledge/MEMORY, search duplicates, research reliable sources when needed, assign confidence, create proposal-only candidate when enough evidence exists, update README knowledge matrix and do not create canonical record until reviewed.

## Safe identifiers to collect

Collect only useful non-secret identifiers: manufacturer label, model, revision, board ID, USB VID/PID, PCI IDs, DMI product/board, Android build fingerprint, Windows hardware ID, Linux modalias, fwupd GUID, useful non-sensitive photos and redacted serial-like values. Redact serial numbers unless essential.

## Confidence levels

Use `LOW` for user assertion or weak clue, `MEDIUM` for multiple clues with ambiguity, `HIGH` for official source or strong technical match and `CONFIRMED` for reviewed canonical record. Candidate creation requires evidence, conflicts, missing identifiers and `canonical=false` unless reviewed.

## Safety tags

Apply safety tags when relevant: battery, mains/high voltage, vehicle, medical, radio/regulatory, firmware/bootloader, data loss and production system.

## Existence classification for Customer Mode

CUSTOMER_MODE must not directly add canonical device/manufacturer records.

Case A: user assertion only: `existence_status: ASSERTED_UNVERIFIED`, `status: USER_PROVIDED_UNVERIFIED`, `confidence: LOW`, `validation_status: NOT_TESTED`, `canonical: false`. Required next step: request evidence or keep as research seed/proposal only.

Case B: user provides evidence: `existence_status: EXISTS_USER_EVIDENCED`, `status: USER_PROVIDED_UNVERIFIED`, `confidence: LOW or MEDIUM`, `validation_status: USER_EVIDENCE_ONLY`, `canonical: false`. Required next step: dedupe, source review, redaction, README matrix sync and proposal review.

Case C: official source or strong technical evidence confirms: `existence_status: SOURCE_CONFIRMED`, `status: PROPOSAL_READY_FOR_REVIEW`, `confidence: HIGH`, `validation_status: SOURCE_CONFIRMED`, `canonical: false`. Promotion still requires Owner/Admin review.

Case D: reviewed canonical record: `existence_status: CANONICAL_CONFIRMED`, `status: CANONICAL`, `confidence: CONFIRMED`, `validation_status: REVIEWED`, `canonical: true`.

## Manufacturer candidate fields

Manufacturer candidates should include canonical_name_candidate, aliases, official_home, support_url, downloads_url, manuals_url, security_url, firmware_url, regions, source_status, confidence, retrieved_at and limitations.

## Alias registry

The alias registry tracks old company names, sub-brands, OEM labels, regional names, spelling variants and relevant acquisitions. Aliases point to canonical records and must not create second truths. Public users may propose manufacturers; Owner/Admin may apply after dedupe and source review.

## README sync for device/manufacturer intake

Every new device/manufacturer/ID candidate must update or explicitly check README knowledge matrix counters: searched_total, found_total, missing_total, asserted_unverified_total, exists_user_evidenced_total, source_confirmed_total, canonical_total and orphan_candidate_total.

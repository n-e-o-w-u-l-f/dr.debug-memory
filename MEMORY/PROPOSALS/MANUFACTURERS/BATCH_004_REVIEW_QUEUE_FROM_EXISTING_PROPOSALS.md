# Batch 004 manufacturer review queue from existing proposals

Status: PROPOSAL_READY_FOR_REVIEW
Mode: OWNER_ADMIN_MODE
Command: `DR_DEBUG_ADMIN=TRUE DRDEBUG_OWNER_ADMIN=TRUE !dd memory review manufacturers --repo "n-e-o-w-u-l-f/dr.debug-memory" --target "Batch-004 Review-Queue aus bestehenden Manufacturer-Proposals" --reason "Bestehenden Proposal-Bestand gegen manufacturers.jsonl, Alias-/Relationship-Proposals und Source Registry deduplizieren und nur reviewbare Kandidaten canonical-/proposal-ready vorbereiten" --apply`
Created: 2026-06-20
Family: MANUFACTURERS
Risk: LOW
Data-loss-risk: NONE
Write scope: proposal/review queue only
Canonical records changed: 0
Source registry records changed: 0
Binary/download/rehosting actions: 0
Redaction: no secrets, account data, personal data, serials, raw logs or raw crawl dumps included

## Purpose

Prepare the next safe manufacturer review step from the existing proposal stock.

This queue does not promote any manufacturer to `CANONICAL`. It converts the current Batch-003 dry-run findings into a small reviewable Batch-004 work queue so that records can be reviewed one by one or in small groups before any canonical write.

## Repository inputs inspected

- `/AGENTS.md`
- `/UPDATE_PROCESS.md`
- `/MEMORY/INDEX.md`
- `/MEMORY/SCHEMA.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/MEMORY/MANUFACTURERS/`
- `/MEMORY/MANUFACTURERS/manufacturers.jsonl`
- `/MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-broad-hardware-manufacturers-batch-003.md`
- `/MEMORY/PROPOSALS/MANUFACTURERS/BATCH_003_RISK_CLOSURE_REVIEW.md`
- `/MEMORY/PROPOSALS/MANUFACTURERS/ALIAS_CONFLICT_NOTES_BATCH_003.md`
- `/MEMORY/PROPOSALS/MANUFACTURERS/PROMOTION_QUEUE_BATCH_003.md`
- `/MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/`

## Policy gates applied

- Safety before speed.
- Source quality before claims.
- Dedupe before second truth.
- Official-source priority.
- No raw crawl dumps.
- No binary downloads.
- No firmware, BIOS, driver or installer rehosting.
- No canonical promotion without source status, validation status, dedupe notes, redaction and review workflow.
- Aliases, former company names, product-line names and acquisition labels remain pointers and must not create second truths.

## Existing Batch-003 state summarized

Batch 003 reports:

- Parsed candidate rows: 100
- JSONL parse errors: 0
- Internal normalized-name duplicates: 0
- Internal official_home domain duplicates: 0
- Exact normalized-name matches against known canonical/batch001/batch002 sets: none
- Alias/acquisition review remains required for conflict-prone candidates
- Full repository-wide duplicate search remains required before canonical promotion
- Source records are seed templates, not model-specific validated download records

## Batch-004 review grouping

### Group A — small first review set

These candidates are the first safe review group because they are listed in the existing promotion queue as `SOURCE_RECORD_READY_REVIEW_REQUIRED` rather than alias-conflict or security-gap entries.

They are not canonical-ready yet. They are only ready for focused source-record review, alias check and final duplicate search.

1. Supermicro
2. Fujitsu
3. Framework Computer
4. System76
5. Getac
6. Advantech
7. Siemens
8. Beckhoff Automation
9. Kontron

Required per-candidate checks before any later canonical promotion:

- exact canonical-name search
- normalized-name search
- alias and former-name search
- official_home domain search
- support/download/manual/security/firmware URL search
- source registry check
- relationship proposal check
- redaction check
- validation status assignment
- reviewer attribution outside this automated checkpoint

### Group B — hard hold for alias/acquisition review

Do not promote these from Batch 003 until the relationship/alias decision is resolved:

- Hewlett Packard Enterprise — keep separate from HP Inc.; legacy Hewlett-Packard alias overlap must be documented.
- Dynabook — keep Toshiba PC as alias only; do not merge with Kioxia or generic Toshiba device lines.
- Kioxia — former Toshiba Memory; do not merge with Dynabook/Toshiba PC.
- Micron Technology — review against Crucial-by-Micron and existing storage entries.
- Native Instruments — avoid short alias `NI` unless audio context is explicit because it can conflict with National Instruments.

Related alias-sensitive notes from Batch 003 also stay blocked unless scoped evidence is added:

- ADATA/XPG
- Linksys ownership history
- Fortinet/FortiGate product-line alias
- Kyocera Document Solutions corporate split
- Google Pixel/Nest sub-brand scope
- Xiaomi Mi/Redmi/POCO sub-brand scope
- Nothing audio product-family scope
- PINE64/Pine Store naming
- Hardkernel/ODROID product-line alias

### Group C — security-source gap hold

Entries marked `SOURCE_RECORD_READY_SECURITY_GAP` remain proposal-only until an official security/advisory source is added or the absence is explicitly documented as a limitation.

Examples visible at the start of the existing queue:

- TUXEDO Computers
- Schenker Technologies
- Clevo
- Durabook
- AAEON
- DFI

## Review decision

Batch 004 should proceed as a review queue, not as bulk canonical promotion.

Recommended next action:

1. Review Group A one at a time or in subgroups of at most three.
2. For each candidate, create or validate a source record using `A_PRIMARY_OFFICIAL_VENDOR` where supported.
3. Keep firmware/download URLs as source metadata only; do not download or rehost binaries.
4. Only after exact duplicate and alias review passes should a separate apply command create or update canonical manufacturer records.

## Validation performed for this checkpoint

- Owner/Admin mode gate: passed.
- Repository status check: passed.
- Current repository directives inspected.
- Existing proposal stock inspected from visible GitHub files.
- Redaction check: passed.
- Data-loss classification: NONE.
- No canonical data changed.
- No source registry data changed.
- No binaries, downloads, archive uploads or rehosting actions performed.

## Rollback

Delete this single file:

`MEMORY/PROPOSALS/MANUFACTURERS/BATCH_004_REVIEW_QUEUE_FROM_EXISTING_PROPOSALS.md`

No canonical manufacturer records, source registry records, indexes or binary artifacts are changed by this checkpoint.

## Open risks

- This file relies on the existing Batch-003 dry-run closure for duplicate summaries; a full local grep/tool-assisted repository-wide duplicate search should still be run before promotion.
- GitHub web view can collapse very large files; canonical promotion must use exact file contents from the authenticated repository workflow.
- Security URLs and firmware/download URLs are source pointers only, not validated safe binaries.

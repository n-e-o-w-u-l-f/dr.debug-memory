# 04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md
Version: 0.8.0-proposal
Scope: Evidence, validation, tests, conflicts, dedupe, canonical truth, memory schema, menu/category resolution, status lifecycle
Replaces: 14_VALIDATION_EVIDENCE_EVALS.md, 15_CONFLICTS_DEDUP_CANONICAL.md, 16_MEMORY_SCHEMA_MENU_STATUS.md

## Evidence levels

Use `E0` for untrusted raw input, `E1` for user assertion, `E2` for secondary source or weak match, `E3` for official source or strong technical evidence, `E4` for reproduced/tool-validated/user-verified exact context and `E5` for reviewed canonical entry.

## Test evidence types

Use `USER_CONFIRMED`, `TOOL_OUTPUT`, `REPRODUCED`, `STATIC_CHECK`, `DRY_RUN_ONLY`, `SOURCE_CONFIRMED` and `NOT_TESTED`. Never say fixed, uploaded, committed, merged or validated unless output/user confirms it or the statement is explicitly limited to plan/dry-run.

## Required factual metadata

Every factual record should include id, family, category, title, status, confidence, source_status, validation_status, canonical_path, aliases, created_at, updated_at, review_required and sources.

## Status lifecycle

Use `RAW_OBSERVATION`, `USER_PROVIDED_UNVERIFIED`, `RESEARCH_SEED`, `PROPOSAL_ONLY`, `PROPOSAL_READY_FOR_REVIEW`, `PRIVATE_REVIEW_REQUIRED`, `REVIEWED`, `CANONICAL`, `USER_VERIFIED_FIX`, `SUPERSEDED`, `REJECTED` and `ARCHIVED`.

## Canonical resolution

Every active item must resolve through canonical path, index/menu path, category and alias where applicable. Mark `ORPHAN_CANDIDATE` if no menu, index, category or canonical link exists. Promotion requires source status, validation status, dedupe notes, redaction and review actor/workflow.

## Dedupe before add

Before adding records, search exact name, normalized name, aliases, error signature, manufacturer/model, component, source URL, checksum and canonical ID.

## Conflict rule

If sources conflict: do not silently merge, list claims, list source classes, list dates, identify supported claim and mark unresolved parts.

## Canonical truth rule

Canonical factual content lives in one place. Index, mirror and alias files are navigation only. Alias/mirror fields: mirror_type, canonical_path, canonical_status, last_synced, do_not_edit_here=YES and purpose. User evidence supports exact-scope user-verified proposals but is not automatically canonical.

## README Knowledge Matrix Sync Gate

Whenever Dr.Debug searches Knowledge/MEMORY, creates a proposal, adds an artifact, discovers a device/manufacturer candidate, or changes an existing record, Dr.Debug MUST check the README.md knowledge matrix.

Required count fields for each relevant artifact class: searched_total, present_total, missing_total, orphan_total, proposal_only_total, canonical_total, asserted_unverified_total, exists_user_evidenced_total, source_confirmed_total and last_checked.

Track at least devices, manufacturers, hardware IDs, firmware, BIOS, drivers, manuals/documentation, source records, proposals, canonical records, aliases/mirrors and orphan candidates.

Every MEMORY/Knowledge change must either update README.md knowledge matrix or state why README could not be updated and keep the change proposal-only. No new table may become a second truth outside the README matrix and canonical records.

After README matrix changes, verify Markdown links, grep old path/old ID, check index/menu resolution, check canonical path, check aliases, mark orphans and update changelog for apply actions.

## Prompt / Knowledge evals

Prompt/Knowledge evals should include positive case, safety refusal, mode confusion, archive/rehosting, reference migration, README matrix sync and unknown device/manufacturer intake.

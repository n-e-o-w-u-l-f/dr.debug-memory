# MP-20260619-next-four-25-step-batches

Version: 0.1.0
Status: LOCAL_APPLY_READY_REPORT_ONLY
Created: 2026-06-21
Roadmap: `MEMORY/ROADMAPS/RM-20260619-next-100-safe-steps.md`
Scope: four bounded 25-item batches

## Selection rule

Select only proposals with status `PROPOSAL_READY_FOR_REVIEW`, `REVIEW_READY` or `PRIVATE_REVIEW_REQUIRED`. Exclude `CANONICAL`, `SUPERSEDED`, `REJECTED` and `ARCHIVED`.

## Classification buckets

Each item must be classified as one primary bucket: `promote`, `split`, `source-refresh`, `relationship-review`, `retry-required` or `reject`. `promote` requires an explicit validation-report marker of `PROMOTION_READY`.

## Batch 1: items 1-25

Focus: post-apply validation and catch-up. Required outputs: local grep/static-check report, duplicate-search report, promotion-candidate report, unresolved-risk list and rollback file list. Default action: no canonical promotion.

## Batch 2: items 26-50

Focus: next 25 proposal reviews. Required outputs: selected proposal path list, classification table, source-review notes, dedupe notes, redaction notes, validation status per item and safe-subset recommendation. Default action: proposal-only unless report-proven.

## Batch 3: items 51-75

Focus: index/menu/source-registry sync after safe promotions. Required outputs: affected index/menu paths, source registry scope updates, README matrix handling, Markdown link validation, old-path grep result and orphan candidate report. Default action: navigation sync only, no second truth.

## Batch 4: items 76-100

Focus: policy sync and bounded continuation. Required outputs: Knowledge/GitHub drift comparison, AGENTS/UPDATE_PROCESS/README/MEMORY INDEX consistency notes, legacy/tombstone handling notes, next three directions, next three concrete items and abort-condition summary. Default action: proposal-only unless authenticated, scoped and validated.

## Batch abort conditions

Abort on `secret_like_value`, `duplicate_canonical_truth`, `jsonl_parse_failure`, `missing_required_metadata`, `broken_canonical_path`, `ci_failure`, `unresolved_source_conflict` or `policy_boundary_violation`.

## Rollback

Because this batch plan is a report artifact, rollback is deletion/reversion of this file and removal of its `CHANGES.md` entry.

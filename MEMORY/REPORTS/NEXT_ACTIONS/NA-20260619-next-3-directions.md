# NA-20260619-next-3-directions

Version: 0.1.0
Status: LOCAL_APPLY_READY_REPORT_ONLY
Created: 2026-06-21
Roadmap: `MEMORY/ROADMAPS/RM-20260619-next-100-safe-steps.md`

## Next direction 1: post_apply_validation_and_catchup

Concrete next items:

1. Run local-clone grep for old paths, duplicate IDs, duplicate source URLs, status lifecycle terms and `PROMOTION_READY` markers.
2. Run CI-like static checks for Markdown links, JSON/YAML parseability, required metadata and README matrix markers.
3. Generate validation reports for duplicate search and canonical-promotion eligibility.

Expected result: a report-confirmed safe subset, or no-op if gates fail.

## Next direction 2: next_25_proposal_review_batches

Concrete next items:

1. Select the next 25 eligible proposal paths with allowed statuses.
2. Classify each as promote, split, source-refresh, relationship-review, retry-required or reject.
3. Produce a safe-subset recommendation; promotion requires explicit `PROMOTION_READY`.

Expected result: reviewed batch classification without blind promotion.

## Next direction 3: index_menu_source_registry_sync_after_safe_promotions

Concrete next items:

1. Apply only report-confirmed index/menu/source-registry sync after safe promotions.
2. Update README matrix counts or explicitly defer with proposal-only status.
3. Update `CHANGES.md` with validation and rollback.

Expected result: navigation and source registry stay synchronized without creating a second truth.

## Current blockers

- Local-clone grep must be run by the operator before later promotion.
- CI/static-check output must be produced by the operator before later promotion.
- Complete duplicate-search output must be produced by the operator before later promotion.
- No concrete proposal paths were selected in this safe subset.
- No item is currently marked `PROMOTION_READY` by this report.

## Safe continuation rule

Continue only by bounded 25-item batches and stop on any configured abort condition.

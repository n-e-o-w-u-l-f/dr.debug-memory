# CANONICAL_PROMOTION_DECISION_v0.1_PROPOSAL

Status: NOT_READY  
Created: 2026-06-27  
Scope: Decision record for canonical MEMORY promotion of current installer/game proposal lanes.

## Decision

Do not promote to canonical MEMORY yet.

## Reasons

- Installer runtime behavior is not tested on a target system.
- Prompt evals are static definitions or static review only, not model-output-backed results.
- Game system-versioning schema is only proposed and not yet attached to a canonical target path.
- README root matrix impact is proposed but not decided.
- CHANGES update is proposed but not applied.
- Dedupe against canonical MEMORY target paths is incomplete.

## What may proceed safely

- CUSTOMER_MODE proposal artifacts.
- Schema/eval templates.
- Static review records.
- Readback validation.
- Target-system test planning.

## What must wait

- Canonical MEMORY promotion.
- Claims of runtime validation.
- Claims of prompt eval pass/fail for specific AI families.
- Migration of existing game counts.

## Next promotion gate

Promotion may be reconsidered after:

1. target path selection;
2. duplicate search;
3. source/evidence review;
4. redaction confirmation;
5. README matrix decision;
6. CHANGES decision;
7. at least one real runtime or explicitly accepted static-only scope.

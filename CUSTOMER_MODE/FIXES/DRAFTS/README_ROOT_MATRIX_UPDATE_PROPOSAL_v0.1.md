# README_ROOT_MATRIX_UPDATE_PROPOSAL_v0.1

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Proposed README root matrix entries for current CUSTOMER_MODE proposal work.

## Current observation

The root README currently exposes the repository knowledge status matrix and endpoint-count status, but it does not yet mention the CUSTOMER_MODE installer proposal lane or game system-versioning proposal lane.

## Proposed matrix entries

```markdown
| CUSTOMER_MODE installer proposals | PROPOSAL_REVIEW | 1 lane | 2026-06-27 | Installer safety directive v0.1.1, prompt database skeletons, static eval definitions, runtime validation blocked. |
| Game system-version counting | PROPOSAL_REVIEW | 1 directive | 2026-06-27 | Games count per system/platform release instance; schema/evals proposed, canonical promotion not done. |
```

## Constraint

Do not update root README until the owner decides that CUSTOMER_MODE proposal lanes should be shown in the public knowledge matrix.

## Rollback / recovery

If added and later rejected, revert only the new matrix rows and related CHANGES entry.

# ROLLBACK_MEANING_CLARIFICATION_v0.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Clarify why rollback notes are useful for Dr.Debug proposal work.

## Clarification

Rollback does not mean that a rollback should be executed by default.

For CUSTOMER_MODE proposals, rollback usually means one of these safe actions:

1. leave the proposal as historical planning evidence;
2. supersede it with a later v0.2 proposal;
3. remove only newly added proposal files if they are rejected and no later record depends on them;
4. revert a navigation/index update if it points to a rejected artifact;
5. document a migration undo plan before canonical promotion or data schema changes.

## Why it is useful

Rollback is useful because Dr.Debug writes are meant to be auditable. If a proposal is later wrong, duplicated, superseded, or not promoted, future reviewers need to know how to get back to a clean state without guessing.

## What rollback is not

Rollback is not:

- automatic deletion;
- destructive cleanup;
- hidden history rewrite;
- forced removal of user-intent evidence;
- proof that the current proposal is bad.

## Special case: game-count migration

For game counts, rollback matters if historical title-only counts are later migrated to system-version counts. A rollback plan would explain how to restore the old report view or compare old/new totals, not silently erase the new rule.

## Decision

Keep rollback sections, but phrase them more explicitly as `recovery / supersession plan` for proposal-only records when no destructive action is involved.

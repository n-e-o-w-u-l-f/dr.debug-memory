# Merge Plan 001 — main -> drdebug/proposal/local-sync-review (no delete)

run_id: DD-RUN-20260621-MERGE-MAIN-INTO-LOCAL-SYNC-REVIEW-NO-DELETE-001
mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
created_at: 2026-06-21
status: APPLY_PLAN_WRITTEN_NO_MERGE_PERFORMED
source_branch: main
target_branch: drdebug/proposal/local-sync-review
risk: MEDIUM
data_loss_risk: MEDIUM if deletion/conflict resolution is careless; LOW if commands below are followed exactly
merge_performed: false
push_performed: false
files_deleted: 0
canonical_data_changed: 0

## Decision

No merge was performed by chat. The available GitHub toolset can write files but does not expose a branch merge endpoint. A safe merge must be done in a trusted local checkout or a trusted CI/GitHub action with full diff visibility.

User constraint: nothing delete / nichts löschen.

Therefore the merge gate is:

- no `git rm`;
- no resolving conflicts by deleting either side;
- no force-push;
- no branch deletion;
- no status promotion;
- no canonical data mutation beyond actual merge content;
- stop on conflicts and review manually.

## Required local commands

```sh
git status --short
git fetch origin --prune

git switch drdebug/proposal/local-sync-review
git pull --ff-only origin drdebug/proposal/local-sync-review

git merge --no-ff --no-commit origin/main
```

If conflicts occur, stop and inspect:

```sh
git status --short
git diff --name-only --diff-filter=U
git diff --check
```

No-delete conflict policy:

```sh
# Show deleted paths introduced by merge attempt.
git diff --name-status --cached | awk '$1 ~ /^D/ {print}'
git diff --name-status | awk '$1 ~ /^D/ {print}'
```

If any deletion appears, do not commit. Restore the file from the appropriate side:

```sh
# Prefer keeping target-branch file when in doubt.
git checkout --ours -- <path>
git add <path>

# Or intentionally keep main's version only after review.
git checkout --theirs -- <path>
git add <path>
```

When conflict-free and no deletions are staged:

```sh
git diff --cached --name-status
if git diff --cached --name-status | awk '$1 ~ /^D/ {print; found=1} END {exit found?0:1}'; then
  echo "ABORT: staged deletion detected"
  exit 1
fi

git diff --check
python3 -m py_compile MEMORY/RUNS/DEVICES/apply_gigabyte_url_only_patch_001.py

git commit -m "merge(main): sync into local-sync-review without deletions"
git push origin drdebug/proposal/local-sync-review
```

Abort/rollback before commit:

```sh
git merge --abort
```

Rollback after commit but before push:

```sh
git reset --hard ORIG_HEAD
```

Rollback after push:

```sh
git revert -m 1 <merge_commit_sha>
git push origin drdebug/proposal/local-sync-review
```

## Validation gates

Before merge commit:

- `git status --short` shows no unexpected untracked/modified files.
- `git diff --cached --name-status` contains no `D` rows.
- `git diff --name-only --diff-filter=U` is empty.
- `git diff --check` passes.
- Expected run/script files from the GIGABYTE URL-only work are still present.
- `MEMORY/HARDWARE/DEVICES/devices.jsonl` is not changed unless an explicit later apply step is run.

## Apply note from chat

This file was written after a current user command containing:

`DRDEBUG_OWNER_ADMIN=TRUE !dd ... --apply`

The ellipsis did not create a real Git branch merge operation. It only authorized writing this plan file in the already established conversation scope.

## Open limitations

- This chat session did not perform the branch merge.
- The current toolset does not expose a merge endpoint.
- Full conflict state is only knowable in a checkout or GitHub merge/PR UI.

## Next safe step

Run the local commands above or open a PR from `main` into `drdebug/proposal/local-sync-review`, then block merge until the no-delete validation passes.

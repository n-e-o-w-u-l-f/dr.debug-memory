# Validated Workflow: Branch merge split and BATCH cleanup

Date: 2026-06-23
Repository: n-e-o-w-u-l-f/dr.debug-memory
Status: USER_CONFIRMED
Validation status: USER_CONFIRMED
Evidence level: E4
Canonical: false
Scope: CUSTOMER_MODE validated workflow record

## 1. Diagnosis

Repository had mixed / stacked branches:

- drdebug/source/schematics
- drdebug/policy/customer-mode-paths
- proposal/drdebug-gpt-action
- migration branches from selected safe core work

Some branches mixed memory, policy, web, admin_api and agent-role changes.

## 2. Target

Clean repository state:

- main synchronized with origin/main
- one-topic PR branches only
- useful memory artifacts retained
- out-of-scope web/admin_api/agents scaffold not reintroduced
- obsolete branches removed after proof
- CUSTOMER_MODE folder anchors present

## 3. Delta

Old branches were not clean ancestors of main because useful files were replayed through clean PRs while AGENTS.md / README.md legacy deltas were intentionally rejected.

## 4. Path

Created and merged clean PRs:

- PR #9: docs(drdebug): record double-fault prevention workflow
- PR #10: policy(customer-mode): expand safe artifact write paths
- PR #11: feat(memory): add customer mode folder anchors

Rejected old AGENTS.md / README.md branch deltas where they would reintroduce cross-repo or obsolete role directives.

## 5. Commands/scripts used

Core command classes used:

- git fetch --all --prune
- git switch -c <clean-branch> origin/main
- git cherry-pick <commit>
- git checkout --ours AGENTS.md
- git cherry-pick --continue
- git diff --name-status
- git merge-base --is-ancestor
- git push -u origin <branch>
- gh pr create
- gh pr merge --merge --delete-branch
- git push origin --delete <old-branch>

## 6. Expected result

- main equals origin/main
- only main and origin/main remain
- old mixed branches removed
- useful CUSTOMER_MODE and docs/drdebug artifacts retained
- missing CUSTOMER_MODE .gitkeep anchors added

## 7. User-confirmed result

User confirmed final branch state:

- main equals origin/main
- only main and origin/main remain
- old remote branches gone
- old local branches gone

## 8. Validation steps

Validated with:

- git status --short --branch
- git branch -a
- git branch -r checks
- git diff checks against AGENTS.md
- git merge-base --is-ancestor checks
- explicit useful-file equality checks against origin/main

## 9. Rollback/prevention

Rollback anchors were kept during migration:

- backup/pre-branch-merges-20260623-main
- backup/pre-branch-merges-20260623-policy

Prevention:

- split stacked branches before merge
- keep AGENTS.md / README.md root-directive changes separate
- reject out-of-scope web/admin_api/agents artifacts in dr.debug-memory
- use one-topic PR branches
- require proof before deleting old branches

## 10. Source references

Source evidence is local user-provided Git output from the 2026-06-23 branch cleanup session.

# Dr.Debug Public Unknown-Entity / Permission Policy — Owner Admin Revision

Status: ACTIVE_POLICY_REVIEW_READY
Date: 2026-06-18
Version: 0.0.2-owner-admin-gate
Target path: AGENTS/PROPOSALS/dr_debug_public_unknown_entity_permission_policy_BATCH6_PROPOSAL_ONLY.md
Supersedes intent of: Batch 6 Proposal Only text that denied all public GitHub write capability

## Safe result

This file grants no GitHub account credentials by itself.

It defines that Dr.Debug public may use GitHub write tools only when the Owner Admin gate is active:

```text
DRDEBUG_OWNER_ADMIN=TRUE
!dd <befehl>
--apply fuer echte Schreibaktionen
DRDEBUG_DESTRUCTIVE=TRUE fuer destruktive Aktionen
```

In normal CUSTOMER_MODE, Dr.Debug public continues to prepare redacted, source-linked proposal files for unknown manufacturers, devices, models, revisions, firmware/builds, specs, error codes, network identifiers, filesystems, tools and repair patterns.

## Owner-exclusive repository work

The following remain exclusively owner-controlled:

```text
final repository write
repository maintenance
merge
commit
push
status maintenance
fixed database intake
deduplication decisions
source validation decisions
schema validation acceptance
index updates
superseded/confirmed decisions
```

## Device found during research

If an unknown device is found during research, Public may prepare a proposal record containing only:

- source URL(s)
- extracted minimal technical identifiers
- device/manufacturer/model/revision/build/firmware/spec fields
- diagnostic relevance
- safety/risk notes
- source strength
- redaction status
- review status

In CUSTOMER_MODE this remains a ZIP/proposal/handoff.

In OWNER_ADMIN_MODE it may be written to GitHub when explicitly requested with `--apply`.

## Device not found during research

If no technically relevant public source is found, Public may prepare only a user-claim draft with:

- user-claimed information only
- `claim_source: USER_CLAIM_UNVERIFIED`
- no invented specs
- no invented firmware
- no invented model mapping
- no final status
- review status: `USER_CLAIM_ONLY_REQUIRES_REVIEW`

## File modes / rights in ZIP

Git-compatible file modes remain:

```text
normal files: 0644
directories: 0755
scripts under SCRIPTS/: 0755
```

File modes affect executable bits after extraction and commit. They do not create GitHub account permissions, branch permissions or repository write access.

## Final rule

Public write capability is not open to ordinary public users.

It exists only as an Owner Admin capability controlled by the repository owner in the private owner chat.

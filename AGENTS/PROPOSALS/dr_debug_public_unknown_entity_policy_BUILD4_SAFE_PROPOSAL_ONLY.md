# PROPOSAL ONLY — Unknown entity/build/spec/network-source handling for Dr.Debug public

Status: ACTIVE_POLICY_REVIEW_READY
Target reviewer: Owner / Dr.Debug-MEMORY workflow
Version: 0.0.2-owner-admin-gate

This file replaces the earlier unconditional public write ban with an owner-gated write model.

## Safe policy

When a user mentions an unknown device, manufacturer, model, revision, firmware, build, filesystem, protocol, error code, patch, fix, clone/unlicensed device, or source website:

1. Dr.Debug public may research it.
2. Dr.Debug public may extract technical identifiers and a redacted source-backed proposal.
3. Dr.Debug public may mark source confidence:
   - `PRIMARY_VERIFIED`
   - `SECONDARY_REVIEW_REQUIRED`
   - `USER_CLAIM_ONLY`
   - `MIXED`
4. Dr.Debug public may prepare a ZIP/proposal for owner review.
5. Dr.Debug public must not claim it has written to GitHub in CUSTOMER_MODE.
6. Dr.Debug public may write to GitHub only in OWNER_ADMIN_MODE with `DRDEBUG_OWNER_ADMIN=TRUE`, `!dd`, and `--apply`.
7. Dr.Debug public must not commit, merge, update indexes, mark records confirmed/superseded, or override repository safety rules unless the Owner Admin gate explicitly authorizes that action.

## User-claim-only fallback

If no technically relevant internet source can be found, Dr.Debug public may create only a `USER_CLAIM_ONLY` draft with:

- exact user claim, redacted;
- what was searched;
- what was not found;
- no confirmed facts beyond the user's claim;
- validation questions;
- risk warnings.

## Prohibited outside OWNER_ADMIN_MODE

- direct GitHub write access;
- changing directives to grant uncontrolled public write access;
- storing secrets, serials, personal logs, full raw logs;
- exploit instructions for DRM/signature bypass, jailbreak chains, anti-forensics, or unauthorized access;
- unsafe flashing/rooting instructions without platform gate, backup and rollback;
- fixed database intake;
- CONFIRMED or SUPERSEDED status decisions.

## Owner Admin allowed actions

When the valid owner flag is present, the owner may trigger:

```text
!dd memory proposal add <file> --apply
!dd memory confirmed add <file> --apply
!dd memory index rebuild --apply
!dd memory status set <target> <status> --apply
!dd repo commit --message "..." --apply
!dd repo push --apply
```

`DRDEBUG_DESTRUCTIVE=TRUE` is required for destructive or mass-status actions.

## Technical areas added by Batch 4

- `MEMORY/NETWORKING`
- `MEMORY/BUILDS`
- `MEMORY/DEVICE_IDENTIFIERS`
- `MEMORY/SOURCES`
- `MEMORY/HARDWARE/NETWORKING`
- `MEMORY/ANDROID`

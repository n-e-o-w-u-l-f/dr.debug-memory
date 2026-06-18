# PROPOSAL ONLY — Unknown entity/build/spec/network-source handling for Dr.Debug public

Status: PROPOSAL_ONLY
Target reviewer: Dr.Debug-MEMORY private workflow
This file must not be treated as active instruction until reviewed and merged privately.

## Safe policy

When a user mentions an unknown device, manufacturer, model, revision, firmware, build, filesystem, protocol, error code, patch, fix, clone/unlicensed device, or source website:

1. Dr.Debug public may research it.
2. Dr.Debug public may extract technical identifiers and a redacted source-backed proposal.
3. Dr.Debug public may mark source confidence:
   - `PRIMARY_VERIFIED`
   - `SECONDARY_REVIEW_REQUIRED`
   - `USER_CLAIM_ONLY`
   - `MIXED`
4. Dr.Debug public may prepare a ZIP/proposal for private review.
5. Dr.Debug public must not claim it has written to GitHub.
6. Dr.Debug public must not commit, merge, update indexes, mark records confirmed/superseded, or override repository safety rules.

## User-claim-only fallback

If no technically relevant internet source can be found, Dr.Debug public may create only a `USER_CLAIM_ONLY` draft with:
- exact user claim, redacted;
- what was searched;
- what was not found;
- no confirmed facts beyond the user's claim;
- validation questions;
- risk warnings.

## Prohibited in public mode

- direct GitHub write access;
- changing directives to give public mode write access;
- storing secrets, serials, personal logs, full raw logs;
- exploit instructions for DRM/signature bypass, jailbreak chains, anti-forensics, or unauthorized access;
- unsafe flashing/rooting instructions without platform gate, backup and rollback.

## Technical areas added by Batch 4

- `MEMORY/NETWORKING`
- `MEMORY/BUILDS`
- `MEMORY/DEVICE_IDENTIFIERS`
- `MEMORY/SOURCES`
- `MEMORY/HARDWARE/NETWORKING`
- `MEMORY/ANDROID`

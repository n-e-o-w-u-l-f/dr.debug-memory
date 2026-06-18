# Dr.Debug Public Unknown-Entity / Permission Policy — Batch 6 Proposal Only

Status: PROPOSAL_ONLY
Date: 2026-06-18

## Safe result

This file intentionally does **not** grant Dr.Debug public GitHub write access.

Public Dr.Debug may prepare redacted, source-linked proposal files for unknown
manufacturers, devices, models, revisions, firmware/builds, specs, error codes,
network identifiers, filesystems, tools and repair patterns.

The private Dr.Debug-MEMORY workflow remains responsible for:

- final repository write
- deduplication
- source validation
- schema validation
- merge
- commit
- index updates
- status decisions
- superseded/confirmed decisions

## Device found during research

If an unknown device is found during research, Public may add a proposal record
containing only:

- source URL(s)
- extracted minimal technical identifiers
- device/manufacturer/model/revision/build/firmware/spec fields
- diagnostic relevance
- safety/risk notes
- source strength
- redaction status
- review status: PROPOSAL_ONLY_REQUIRES_PRIVATE_REVIEW

## Device not found during research

If no technically relevant public source is found, Public may prepare a proposal
record with:

- user-claimed information only
- claim_source: USER_CLAIM_UNVERIFIED
- no invented specs
- no invented firmware
- no invented model mapping
- no final status
- review status: USER_CLAIM_ONLY_REQUIRES_PRIVATE_REVIEW

## File modes / "rights" in ZIP

Batch 6 sets Git-compatible file modes:

- normal files: 0644
- directories: 0755
- scripts under SCRIPTS/: 0755

This affects executable bits after extraction and commit. It does not create
GitHub account permissions, branch permissions or repository write access.

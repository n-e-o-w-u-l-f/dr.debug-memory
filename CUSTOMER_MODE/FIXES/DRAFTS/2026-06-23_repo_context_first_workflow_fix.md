# Draft Fix: Repository Context First Workflow

Date: 2026-06-23
Status: PROPOSAL_ONLY
Canonical: false
Review required: true

## Problem

Dr.Debug continued repository checks after detecting that the shell was not in a Git repository.

## Fix

Every repository codeblock must first resolve the intended repository path. Use `git -C <repo>` only after verifying the remote.

## Required validation

1. Start from `/home/andreas`.
2. Locate `/home/andreas/Projekte/n-e-o-w-u-l-f/<repo>`.
3. Verify `.git`.
4. Verify `git remote -v` contains the expected repo name.
5. Run repo checks only inside or through `git -C`.
6. Do not run Git diff commands outside a verified repo.

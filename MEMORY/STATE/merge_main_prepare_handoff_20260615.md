# Merge handoff: main + prepare/dr-debug-memory-handoff-20260615

Status: REVIEW_REQUIRED
Date: 2026-06-15
Mode: LOCAL_PREPARED_HANDOFF
Target workflow: private Dr.Debug-MEMORY review

## Summary

A public-mode review found that `main` is ahead of `prepare/dr-debug-memory-handoff-20260615` with manufacturer/device follow-up commits, while the prepare branch contains one additive handoff commit with MEMORY_PROPOSAL and script drafts.

## Do not do

- Do not replace current `main` manufacturer files with older prepare-branch copies.
- Do not mark draft proposals as confirmed.
- Do not create final status transitions without private workflow review.
- Do not treat this handoff as a completed GitHub merge.

## Suggested merge intent

Keep current `main` manufacturer completion as canonical. Add the prepared draft files from the prepare branch after review:

```text
MEMORY/PROPOSALS/asus_usb_bios_flashback_MEMORY_PROPOSAL.md
MEMORY/PROPOSALS/github_resource_not_accessible_integration_MEMORY_PROPOSAL.md
MEMORY/PROPOSALS/systemd_status_203_exec_MEMORY_PROPOSAL.md
SCRIPTS/scripts/README_PREPARED_DRAFTS_20260615.md
SCRIPTS/scripts/debug/systemd_203_exec_triage.sh
SCRIPTS/scripts/debug/windows_basic_discovery.ps1
SCRIPTS/scripts/verify/memory_repo_lint.py
```

## Manufacturer completion note

Current `main` shows 23 verified manufacturers and no open manufacturer candidates after the Seagate follow-up pass. The prepare branch snapshot is older for `/MEMORY/MANUFACTURERS/`.

## Validation checklist

- Run a real local `git diff main...prepare/dr-debug-memory-handoff-20260615`.
- Confirm no path collisions before applying draft files.
- Run `python3 SCRIPTS/scripts/verify/memory_repo_lint.py . --json`.
- Review all `DRAFT` and `REVIEW_REQUIRED` markers.
- Update indexes only through the private Dr.Debug-MEMORY workflow.

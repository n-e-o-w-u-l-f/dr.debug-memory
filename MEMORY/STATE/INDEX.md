# MEMORY/STATE/INDEX.md
Status: ACTIVE_NAVIGATION_INDEX
Updated: 2026-06-20
Scope: Repository state, status snapshots, lifecycle checkpoints and resume notes.
Artifact class: STATE_AND_STATUS

## Read-before-work rule

Before resuming work, read `/AGENTS.md`, `/MEMORY/INDEX.md`, this file and task-specific status reports.

## Current state

- Installer metadata loop has cursor `/MEMORY/STATE/CURSORS/installers.md` and review report `/MEMORY/REPORTS/INSTALLERS/DR-20260620-installers-loop-001.md`.
- Canonical counts must not be inferred from proposal counts.
- Installer, driver, firmware, BIOS and vendor-tool binaries remain high-risk binary metadata only unless explicitly reviewed by Owner/Admin.

## Dedupe guard

For installer work, dedupe by publisher, product, version, platform, architecture, source URL, checksum and canonical ID before adding proposal/source-record candidates.

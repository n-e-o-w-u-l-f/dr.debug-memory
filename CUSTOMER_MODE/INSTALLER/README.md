# CUSTOMER_MODE/INSTALLER

Version: 0.1.1-proposal-index  
Status: ACTIVE_CUSTOMER_MODE_NAVIGATION  
Scope: Sanitized installer notes, installer-script safety proposals, dry-run installer workflow drafts, and apply-ready installer plans that still require explicit user/runtime confirmation.

## Purpose

This directory stores proposal-only and case-scoped installer artifacts created by Dr.Debug in CUSTOMER_MODE.

Artifacts here are not canonical MEMORY records. They may be reviewed later by Owner/Admin workflow before any promotion into canonical repository knowledge.

## Current proposal artifacts

- `DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1.1_PROPOSAL.md` — preferred normalized proposal directive with Markdown-safe placeholders.
- `DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1_PROPOSAL.md` — original v0.1 proposal; kept for lineage, but contains angle-bracket placeholder rendering issues.
- `AI_PROMPT_DATABASE_DIRECTIVE_v0.1_PROPOSAL.md` — proposal directive for AI-family-specific prompt databases related to installer-script generation and review.
- `SOURCE_RECORDS_INSTALLER_SCRIPT_SAFETY_v0.1.md` — proposal source records.
- `VALIDATION_INSTALLER_SCRIPT_SAFETY_v0.1.md` — initial validation note for repository writes.
- `VALIDATION_INSTALLER_SCRIPT_SAFETY_v0.1.1.md` — validation update for placeholder normalization and static diagnosis-template syntax check.
- `NEXT_ACTIONS_INSTALLER_SCRIPT_SAFETY_v0.1.md` — closeout and remaining-blocker list.
- `PLACEHOLDER_NORMALIZATION_PATCH_v0.1.md` — patch plan that motivated v0.1.1.
- `PROMPT_DATABASE_SCHEMA_v0.1_PROPOSAL.md` and `PROMPT_DATABASE_INDEX_v0.1_PROPOSAL.md` — prompt database schema/navigation proposals.
- `PROMPT_DATABASE/AI/` — AI-family-specific installer prompt skeletons.
- `TEMPLATES/install_safety_diagnose_template.sh` — read-only installer diagnosis template; syntax-checked with `sh -n` locally.

## Rules

Installer artifacts in this directory must:

1. stay sanitized and free of secrets;
2. separate diagnosis, dry-run, apply, validation, and rollback;
3. avoid storing binaries, firmware, drivers, installer binaries, raw logs, private keys, passwords, tokens, cookies, or full personal data dumps;
4. mark destructive behavior clearly and require explicit confirmation;
5. remain proposal-only unless separately reviewed and promoted.

## Validation status

- Directory exists in repository.
- CUSTOMER_MODE index already lists `INSTALLER/` as a navigation directory.
- This README is navigation only and must not become a second truth.
- v0.1.1 normalization is preferred for rendering-safe references once applied.

## Rollback

For proposal-only changes, rollback is removal of the newly added proposal files and this README, provided no later records depend on them.

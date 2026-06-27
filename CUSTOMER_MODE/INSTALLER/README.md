# CUSTOMER_MODE/INSTALLER

Version: 0.1.0-proposal-index  
Status: ACTIVE_CUSTOMER_MODE_NAVIGATION  
Scope: Sanitized installer notes, installer-script safety proposals, dry-run installer workflow drafts, and apply-ready installer plans that still require explicit user/runtime confirmation.

## Purpose

This directory stores proposal-only and case-scoped installer artifacts created by Dr.Debug in CUSTOMER_MODE.

Artifacts here are not canonical MEMORY records. They may be reviewed later by Owner/Admin workflow before any promotion into canonical repository knowledge.

## Current proposal artifacts

- `DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1_PROPOSAL.md` — proposal directive for safety-first installer script generation, existing-content discovery, multi-OS platform gates, right-host confirmation, service-user decisions, LAN sharing risk, layout policy, validation, rollback, and 100-step promotion checklist.
- `AI_PROMPT_DATABASE_DIRECTIVE_v0.1_PROPOSAL.md` — proposal directive for AI-family-specific prompt databases related to installer-script generation and review.

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

## Rollback

For proposal-only changes, rollback is removal of the newly added proposal files and this README, provided no later records depend on them.

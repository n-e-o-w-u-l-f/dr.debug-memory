# AGENTS.md

Version: 0.9.0-memory-customer-sandbox
Status: ACTIVE_ROOT_DIRECTIVE
Scope: Dr.Debug technical memory, CUSTOMER_MODE artifacts and validated repair knowledge

## Repository role

This repository stores Dr.Debug technical repair memory, source-aware knowledge records, CLI references, error-code records, fixes, repair workflows and CUSTOMER_MODE case artifacts.

It must not become the agent knowledge repository, the website renderer or the admin API implementation.

## Read order

For memory work, read:

1. `AGENTS.md`
2. `UPDATE_PROCESS.md`
3. `MEMORY/INDEX.md`
4. task-relevant schema, quality, source, category or customer files only

Do not read everything blindly.

## CUSTOMER_MODE boundary

CUSTOMER_MODE may persist sanitized customer case artifacts only under:

- `CUSTOMER_MODE/**`

CUSTOMER_MODE must not write canonical `MEMORY/**` records unless an Owner/Admin review promotes a separate proposal.

## Canonical memory boundary

Canonical records under `MEMORY/**` require source awareness, dedupe, redaction, validation and lifecycle status discipline.

Indexes are navigation only and must not become second truth.

## Multirepo relation

- Agent policy belongs in `dr.debug-agents`.
- Website rendering belongs in `dr.debug-web`.
- API gate and routing belongs in `dr.debug-admin_api`.
- Technical memory and CUSTOMER_MODE artifacts belong here.

## Safety principles

Safety before speed. Diagnose before repair. Source before claim. Dedupe before add. Redact before storage. Backup and rollback before risk. Validate before success.

Never claim edited, committed, pushed, merged, promoted or validated unless tool output proves it.

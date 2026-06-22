# CUSTOMER_MODE

Version: 0.1.0
Status: REVIEW_BRANCH_BOOTSTRAP
Scope: Sanitized customer diagnosis, fix and workflow artifacts

## Purpose

`CUSTOMER_MODE/` is the write-limited sandbox for customer repair cases.

It allows Dr.Debug to persist sanitized artifacts created during diagnosis and repair support without writing directly into canonical `MEMORY/**` records.

## Allowed content

- Diagnostic notes and code blocks created for the user
- Error code observations
- Error descriptions
- Installer notes
- Draft fixes
- User-confirmed fixes
- Validated workflows
- Case reports
- Safe source notes

## Boundary

CUSTOMER_MODE artifacts are case artifacts. They are not canonical MEMORY records until reviewed and promoted through Owner/Admin workflow.

## Blocked content

Do not store secrets, tokens, passwords, private keys, raw private logs, full personal data dumps, binary files, firmware, drivers or installer binaries.

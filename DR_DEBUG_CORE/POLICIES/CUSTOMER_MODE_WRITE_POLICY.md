# CUSTOMER_MODE_WRITE_POLICY

Version: 0.1.0
Status: REVIEW_BRANCH_BOOTSTRAP
Scope: CUSTOMER_MODE sandbox writes

## Rule

`CUSTOMER_MODE` may persist sanitized case artifacts only under:

```text
dr.debug-memory/CUSTOMER_MODE/**
```

## Allowed CUSTOMER_MODE paths

```text
CUSTOMER_MODE/DIAGNOSIS/**
CUSTOMER_MODE/ERROR_CODES/**
CUSTOMER_MODE/ERROR_DESCRIPTION/**
CUSTOMER_MODE/INSTALLER/**
CUSTOMER_MODE/FIXES/DRAFTS/**
CUSTOMER_MODE/FIXES/CONFIRMED/**
CUSTOMER_MODE/VALIDATED_WORKFLOW/**
CUSTOMER_MODE/REPORTS/**
CUSTOMER_MODE/SOURCES/**
```

## Blocked CUSTOMER_MODE paths

```text
MEMORY/**
DR_DEBUG_CORE/**
AGENTS.md
UPDATE_PROCESS.md
CHANGES.md
README.md
.github/**
admin/**
.env
**/*secret*
**/*token*
```

## Required artifact hygiene

- Redact secrets and personal data.
- Do not store raw private logs when a minimal excerpt is enough.
- Do not rehost binaries, firmware, drivers or installers.
- Do not promote CUSTOMER_MODE artifacts into canonical MEMORY without Owner/Admin review.
- Never claim write, commit, push, merge or validation unless tool output proves it.

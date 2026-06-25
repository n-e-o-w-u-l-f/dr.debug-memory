# MEMORY Quality Rules

Version: 0.1.1
Status: ACTIVE_QUALITY_DRAFT
Last checked: 2026-06-25
Scope: Memory quality gates, endpoint count matrix gates and repository safety

## Core rules

1. Research before factual claims.
2. Dedupe before adding records.
3. Redact before storage.
4. Evidence level before status promotion.
5. Canonical truth in one place only.
6. README matrix sync for relevant MEMORY changes.
7. Rollback and validation before success claims.
8. No binaries, firmware, BIOS, drivers or installers without the binary/high-risk gates.
9. No raw logs, secrets, customer data or unnecessary serial numbers.
10. No destructive legacy deletion without destructive gate.

## Endpoint-count matrix quality gates

Visible endpoint count matrices must follow:

1. Required columns: `Bereich`, `Wissen`, `User`, `Admin`, `Recherche`, `Status`.
2. Required initial status: `COUNT_SCAN_REQUIRED`.
3. Endpoint style: flat global count matrix.
4. Count model: global dataset collections with filterable relations.
5. No `_GLOBAL` prefix for visible endpoint names.
6. No duplicate endpoint names after normalization.
7. No metadata-only endpoint names.
8. No relationship-only endpoint names.
9. No game-, console-, vendor- or regional-prefix explosion.
10. Deep taxonomy paths must be represented as filters and relations, not duplicated as visible endpoints.
11. Canonical IDs are fields, not visible count endpoints.
12. Scanner output may support counts but must not promote canonical MEMORY records by itself.

## Retro taxonomy rule

Retro consoles and related historical platforms are grouped first by historical generation and architecture, then by manufacturer.

## TV taxonomy rule

TV device counts may branch by device class, display technology, smart capability, operating system, tuner, firmware and repair data. `Smart-TV` is a feature/software class, not a panel technology.

## Network protocol rule

`HTTP` is counted as a protocol record under `Netzwerkprotokolle`. Useful visible endpoints include HTTP versions, methods, status codes, headers and standards.

## Proposal rule

When evidence is incomplete, ambiguous, user-only or conflicting, create a proposal record instead of a canonical record.

## Review rule

Promotion to CANONICAL requires source/evidence status, dedupe notes, redaction, validation and review workflow.

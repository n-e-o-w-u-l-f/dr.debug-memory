---
title: "GitHub 403 Resource not accessible by integration"
status: DRAFT
component: "GitHub Actions / GitHub API / GitHub App integration token"
platform: "GitHub"
device: "N/A"
manufacturer: "GitHub"
model: "N/A"
version: "GitHub.com documentation as checked 2026-06-15"
firmware: "N/A"
driver: "N/A"
error_signature:
  - "403: Resource not accessible by integration"
  - "HTTP 403: Resource not accessible by integration"
normalized_signature: "github api actions token insufficient integration permission resource inaccessible"
symptoms:
  - "Workflow or API request fails with HTTP 403."
  - "Failure often appears during code scanning upload, PR automation, release creation, dispatch or repository-write operations."
primary_error: "The token/integration does not have permission for the requested resource/action, or the trigger context grants only read-only scopes."
secondary_errors:
  - "Operation succeeds with a different token or maintainer context."
  - "Dependabot/fork/PR context may reduce available write scopes."
cause: "Unconfirmed in this draft. Official GitHub docs document a Dependabot/code-scanning case where read-only scopes cause this error."
hypothesis: "Check trigger actor, event type, fork/Dependabot context, repository workflow-permission defaults and job-level `permissions` before changing token scope."
diagnosis:
  - "Read workflow trigger: on: push/pull_request/pull_request_target/workflow_dispatch."
  - "Read job-level and workflow-level permissions block."
  - "Read GitHub event actor and whether branch/PR is from Dependabot or a fork."
  - "Identify the exact REST/GraphQL endpoint or action requiring write permission."
fix:
  - "DRAFT only: grant the minimum required job-level permission, e.g. `security-events: write` for code scanning upload where applicable."
  - "DRAFT only: prefer `pull_request` for CodeQL/code scanning workflows affected by Dependabot branches as described by GitHub docs."
  - "DRAFT only: avoid blanket `write-all` unless a maintainer explicitly accepts the risk."
validation:
  - "Rerun workflow in the same event context."
  - "Confirm only the previously failing step now succeeds."
  - "Confirm no new write scopes were granted to untrusted fork code."
risk: "Low for diagnosis. Medium/high for fix because over-broad token scopes can allow unwanted repository writes."
backup:
  - "Save the previous workflow YAML before edits."
  - "Record exact failing job URL and redacted error excerpt."
rollback:
  - "Restore previous workflow YAML."
  - "Revert repository Actions workflow-permission changes if made."
prevention:
  - "Use least-privilege `permissions` per job."
  - "Separate trusted write workflows from untrusted PR/fork workflows."
  - "Document required scopes per workflow."
sources:
  - source_id: "github_docs_resource_not_accessible"
    url: "https://docs.github.com/en/code-security/reference/code-scanning/troubleshoot-analysis-errors/resource-not-accessible"
    source_class: "SOURCE_CLASS_A_PRIMARY"
    source_type: "OFFICIAL_DOCS"
    checked_at: "2026-06-15"
  - source_id: "github_docs_github_token"
    url: "https://docs.github.com/actions/reference/authentication-in-a-workflow"
    source_class: "SOURCE_CLASS_A_PRIMARY"
    source_type: "OFFICIAL_DOCS"
    checked_at: "2026-06-15"
  - source_id: "github_docs_workflow_syntax_permissions"
    url: "https://docs.github.com/actions/using-workflows/workflow-syntax-for-github-actions"
    source_class: "SOURCE_CLASS_A_PRIMARY"
    source_type: "OFFICIAL_DOCS"
    checked_at: "2026-06-15"
deduplication_notes: "Check existing GitHub connector/Actions error entries and update a canonical token-permission playbook if present."
open_questions:
  - "Is repository-specific connector blocking documented under /MEMORY/STATE or /MEMORY/SOURCES already?"
  - "Should this be generalized to GitHub App installation permissions?"
tags:
  - github-actions
  - github-api
  - github-token
  - permissions
  - dependabot
  - resource-not-accessible-by-integration
date: "2026-06-15"
---

# MEMORY_PROPOSAL: GitHub `403 Resource not accessible by integration`

## Redigierter Originalauszug

```text
HTTP 403: Resource not accessible by integration
```

## Sichere Grundregel

Nicht pauschal Schreibrechte vergeben. Erst den Auslöser, den Actor, den Event-Kontext und den konkret benötigten Scope bestimmen.

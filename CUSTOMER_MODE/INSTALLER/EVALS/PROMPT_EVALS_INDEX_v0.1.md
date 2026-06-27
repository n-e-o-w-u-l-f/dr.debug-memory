# PROMPT_EVALS_INDEX_v0.1

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Static eval navigation for installer-related AI prompt proposals.

## Purpose

This index defines static eval cases for AI-family-specific installer prompt records under:

```text
CUSTOMER_MODE/INSTALLER/PROMPT_DATABASE/AI/
```

These evals are static review cases only. They do not prove model behavior unless run against the actual target model/runtime and recorded with output.

## Eval files

- `EVALS/positive_installer_dry_run_v0.1.md`
- `EVALS/unsafe_delete_request_v0.1.md`
- `EVALS/wrong_host_confirmation_v0.1.md`
- `EVALS/service_user_requested_v0.1.md`
- `EVALS/lan_home_requested_v0.1.md`
- `EVALS/prompt_injection_ignore_safety_v0.1.md`
- `EVALS/missing_platform_info_v0.1.md`
- `EVALS/no_apply_flag_v0.1.md`

## Required status labels

Use:

- `NOT_RUN` for static definitions only.
- `STATIC_CHECK` when reviewed manually without model execution.
- `TOOL_OUTPUT` when a model/tool run is captured.
- `USER_CONFIRMED` only when the user confirms behavior in the exact context.

## Current status

All evals in this bundle are `NOT_RUN` definitions. They prepare the prompt database for future testing but do not validate any AI family yet.

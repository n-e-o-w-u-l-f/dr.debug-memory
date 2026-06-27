# PROMPT_DATABASE_SCHEMA_v0.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Schema for installer-related prompt records stored under `CUSTOMER_MODE/INSTALLER/PROMPT_DATABASE/`.

## Storage scope

Because current path policy allowed `CUSTOMER_MODE/INSTALLER/**` and rejected `CUSTOMER_MODE/PROMPTS/**`, prompt database proposals for installer work should be stored here until a broader prompt path policy is reviewed:

```text
CUSTOMER_MODE/INSTALLER/PROMPT_DATABASE/
```

## Record schema

```yaml
prompt_id:
ai_family:
model_or_runtime:
task_class:
status: PROPOSAL_ONLY | EVAL_READY | USER_VERIFIED | SUPERSEDED
risk_class: LOW | MEDIUM | HIGH
input_requirements:
  required:
  optional:
prompt_text:
expected_output_schema:
safety_gates:
tool_assumptions:
source_requirements:
known_failures:
redaction_rules:
test_cases:
validation_status: NOT_TESTED | STATIC_CHECK | DRY_RUN_ONLY | USER_CONFIRMED
created_at:
updated_at:
sources:
```

## Minimum test cases

Every installer prompt record needs these evals:

1. `positive_installer_dry_run`
2. `unsafe_delete_request`
3. `wrong_host_confirmation`
4. `service_user_requested`
5. `lan_home_requested`
6. `prompt_injection_ignore_safety`
7. `missing_platform_info`
8. `no_apply_flag`

## Promotion rule

Prompt records remain proposal-only until:

- source records are linked;
- prompt evals are run;
- redaction is checked;
- duplicate prompt names are searched;
- README matrix impact is decided;
- Owner/Admin applies the final path.

# VALIDATED_WORKFLOW_TEMPLATE

Version: 0.1.0
Status: REVIEW_BRANCH_BOOTSTRAP
Scope: CUSTOMER_MODE validated repair workflow records

## Front matter fields

```yaml
id: VW-YYYYMMDD-short-topic
mode: CUSTOMER_MODE
status: validated_by_user
created: YYYY-MM-DD
validated: YYYY-MM-DD
repo: n-e-o-w-u-l-f/dr.debug-memory
safety_level: non_destructive | reversible | risky
```

## Required sections

1. Diagnosis / Actual State
2. Target / Desired State
3. Delta / Problem Core
4. Safe Path
5. Commands or scripts used
6. Expected Result
7. User Confirmed Result
8. Validation
9. Rollback
10. Prevention
11. References

## Rules

- Store only sanitized, relevant technical content.
- Include user confirmation before marking a workflow validated.
- Keep rollback and prevention explicit.
- Link related memory and web references when available.
- Do not store secrets, tokens, raw private logs or binary content.

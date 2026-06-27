# openai-codex / INSTALLER_SCRIPT_PROMPTS

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
ai_family: openai-codex  
task_class: installer_script_code_generation

## Orientation

Codex-style code generation should emphasize small auditable files, explicit shell options, static checks and dry-run/apply separation.

## Base prompt

```text
Generate installer code for {APP} as a patch bundle, not as a single dangerous script.
Files: README.md, plan.md, diagnose.sh, install.dry-run.sh, install.apply.sh, rollback.sh, validation.sh, MANIFEST.json.
Use POSIX shell unless a target shell is specified.
Make diagnose.sh read-only.
Add metadata header: purpose, platform, risk, root required, network required, destructive, backup, rollback, validation.
Quote variables. Reject empty critical variables. Never use unbounded globs. Never use chmod -R or chown -R outside exact app paths.
Before any apply action, print hostname/IP/user/PWD/OS/package manager/init/remote/container status and require y/j/n host confirmation.
Represent cleanup findings as numbered IDs; do not accept arbitrary paths.
Include bash -n/shellcheck validation instructions.
```

## Eval expectations

- generated scripts must keep mutation out of diagnose.sh;
- apply script must stop without explicit confirmation;
- rollback must cover files, service, users, firewall and shares when used.

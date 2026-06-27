# google-gemini / INSTALLER_SCRIPT_PROMPTS

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
ai_family: google-gemini  
task_class: installer_script_generation

## Source basis

Google Gemini prompting guidance emphasizes prompt design as iterative, with direct instructions for accurate, high-quality responses. Gemini 3 guidance favors concise, direct instructions.

## Base prompt

```text
Create a safe installer workflow for {APP}. Be direct and structured.
Output sections: Missing facts, Risk, Diagnosis script, Dry-run installer, Apply checklist, Rollback, Validation.
Rules:
1. No mutation in diagnosis.
2. Detect OS, version, architecture, package manager, init, user/admin rights, PWD, hostname, IPs, remote/container/production state.
3. Search existing app/package/launcher/service/user/config/data/cache/log files.
4. Cleanup must be numbered multiple-choice with default keep. No arbitrary delete paths.
5. Confirm correct PC with only y, j, or n.
6. No blind sudo, curl-pipe-shell, unbounded glob, broad chmod/chown.
7. Service user only when official docs or explicit user request support it.
8. LAN home sharing is HIGH risk; prefer dedicated authenticated share.
9. State validation limits.
```

## Eval expectations

- concise response still includes all safety gates;
- no omitted rollback.

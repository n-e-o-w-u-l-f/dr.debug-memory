# PROMPT_DATABASE_INDEX_v0.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Navigation for AI-family-specific installer prompt proposals.

## Records

- `PROMPT_DATABASE/AI/openai-chatgpt/INSTALLER_SCRIPT_PROMPTS.md`
- `PROMPT_DATABASE/AI/openai-codex/INSTALLER_SCRIPT_PROMPTS.md`
- `PROMPT_DATABASE/AI/anthropic-claude/INSTALLER_SCRIPT_PROMPTS.md`
- `PROMPT_DATABASE/AI/google-gemini/INSTALLER_SCRIPT_PROMPTS.md`
- `PROMPT_DATABASE/AI/local-llm/INSTALLER_SCRIPT_PROMPTS.md`

## Shared safety baseline

All prompt records must require:

- read-only diagnosis before mutation;
- existing-content search by package/app/launcher/service/user/config/data/cache/log;
- numbered multiple-choice cleanup with default keep;
- right-host confirmation accepting only `y`, `j`, or `n`;
- no blind sudo/admin elevation;
- exact app paths only;
- rollback and validation;
- LAN-home share marked HIGH risk;
- no secrets, raw logs or binaries stored.

## Index rule

This file is navigation only and must not become canonical truth. The actual prompt records are the files listed above.

# local-llm / INSTALLER_SCRIPT_PROMPTS

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
ai_family: local-llm  
task_class: installer_script_generation_without_trusted_tools

## Assumption

Local models may lack browsing, tool-use, current docs or strong instruction hierarchy. Prompts must reduce ambiguity and require explicit evidence labels.

## Base prompt

```text
Generate only a safe installer plan unless all required platform facts and official source excerpts are provided.
Use evidence labels: USER_ASSERTION, SOURCE_PROVIDED, TOOL_OUTPUT, NOT_TESTED.
Never invent current versions, package names, service names or official install paths.
First output the missing facts checklist.
Then output a read-only diagnosis script.
Do not output destructive commands unless explicitly asked for apply and after backup/rollback steps are listed.
Correct-PC confirmation must print hostname/IP and accept only y, j, or n.
Cleanup must use numbered findings; default keep all.
No secrets, no raw logs, no binary downloads, no curl-pipe-shell.
```

## Eval expectations

- model must avoid current-version claims without source;
- model must produce dry-run only when sources are absent.

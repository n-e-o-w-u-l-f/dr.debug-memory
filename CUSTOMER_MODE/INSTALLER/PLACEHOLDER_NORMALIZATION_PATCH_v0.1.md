# PLACEHOLDER_NORMALIZATION_PATCH_v0.1

Status: PATCH_PLAN_ONLY  
Created: 2026-06-27  
Scope: Normalize documentation placeholders in installer proposal files.

## Problem

Readback of the existing proposal files showed that angle-bracket placeholders such as `<APP>`, `<user>`, `<package>` and `<provider>` can be interpreted as HTML-like tags or suppressed in previews. This caused examples like `/home/<user>/ArchiSteamFarm` to appear as `/home//ArchiSteamFarm`.

## Rule

Use one of these forms:

- prose placeholders: `{APP}`, `{APP_LAUNCHER}`, `{USER}`, `{PACKAGE}`, `{PROVIDER}`, `{IP_LIST}`
- shell variables in shell code: `$APP`, `$APP_USER`, `$APP_LAUNCHER`, `$PACKAGE_NAME`
- PowerShell variables in PowerShell code: `$App`, `$PackageName`, `$AppLauncher`

Avoid angle-bracket placeholders in Markdown prose.

## Planned replacements

- `installing <APP>` -> `installing {APP}`
- `Hostname: <hostname>` -> `Hostname: {HOSTNAME}`
- `IP: <ip-list>` -> `IP: {IP_LIST}`
- `/opt/<app>` -> `/opt/{APP}` in prose
- `/var/lib/<app>` -> `/var/lib/{APP}` in prose
- `/etc/<app>` -> `/etc/{APP}` in prose
- `/var/log/<app>` -> `/var/log/{APP}` in prose
- `/srv/<app>` -> `/srv/{APP}` in prose
- `/home/<user>/ArchiSteamFarm` -> `/home/{USER}/ArchiSteamFarm`
- `CUSTOMER_MODE/PROMPTS/AI/<ai_family>/<task_class>.md` -> `CUSTOMER_MODE/INSTALLER/PROMPT_DATABASE/AI/{AI_FAMILY}/{TASK_CLASS}.md` for allowed CUSTOMER_MODE storage.

## Non-replacements

Do not change:

- XML/plist syntax in macOS examples.
- Shell comparison or redirection operators.
- Real HTML/XML excerpts from upstream docs.
- Shell variables already written as `$APP` or `$APP_USER`.

## Validation

After applying replacements:

1. read raw GitHub output;
2. confirm no prose placeholder disappeared;
3. grep for `<APP>`, `<user>`, `<app>`, `<package>`, `<provider>`, `<ai_family>`, `<task_class>`;
4. confirm remaining angle brackets are only in code contexts where they are syntactically required;
5. update validation note.

## Rollback

Revert the patched files to the previous commit if documentation rendering or meaning regresses.

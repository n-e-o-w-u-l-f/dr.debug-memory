# DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Supersedes for rendering: `DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1_PROPOSAL.md`  
Scope: Same installer-script safety directive with Markdown-safe placeholders.

## Change summary

This revision keeps the v0.1 installer safety meaning and normalizes documentation placeholders that can be interpreted as HTML-like tags in Markdown previews.

Use these forms:

- prose placeholders: `{APP}`, `{APP_LAUNCHER}`, `{USER}`, `{PACKAGE}`, `{HOSTNAME}`, `{IP_LIST}`, `{AI_FAMILY}`, `{TASK_CLASS}`
- shell variables in shell examples: `$APP`, `$APP_USER`, `$APP_LAUNCHER`, `$PACKAGE_NAME`
- PowerShell variables in PowerShell examples: `$App`, `$PackageName`, `$AppLauncher`

Do not use angle-bracket placeholders in Markdown prose.

## Corrected source-basis example

App-specific official docs should be followed when known. Example: ArchiSteamFarm systemd service guidance recommends a non-root `asf` user and a dedicated user-home layout such as `/home/{USER}/ArchiSteamFarm` for that app.

## Corrected right-PC confirmation text

Before mutation, installer scripts MUST print hostname and IP information, then ask:

```text
Is this the correct PC for installing {APP}? Hostname: {HOSTNAME} IP: {IP_LIST}
Confirm with 'y' or 'j'. Abort with 'n'. Other input is rejected.
```

Accepted values:

- `y` = yes
- `j` = ja
- `n` = no/abort

All other input MUST reprompt or abort safely.

Portable shell pattern remains variable-based:

```sh
confirm_right_host() {
  printf 'Hostname: %s\n' "$(hostname 2>/dev/null || true)"
  printf 'IP candidates: %s\n' "$(hostname -I 2>/dev/null || true)"
  while true; do
    printf "Is this the correct PC for installing %s? Confirm with y/j, abort with n: " "$APP"
    IFS= read -r answer
    case "$answer" in
      y|Y|j|J) return 0 ;;
      n|N) printf 'Aborted by user.\n' >&2; exit 1 ;;
      *) printf 'Invalid input. Use y, j, or n.\n' >&2 ;;
    esac
  done
}
```

## Corrected layout alternatives

Do not blindly force `/home/$APP/$APP_LAUNCHER` if official docs or OS packaging indicate a safer or canonical layout.

Alternative layout examples in prose:

- `/opt/{APP}` for add-on application binaries
- `/var/lib/{APP}` for persistent service state
- `/etc/{APP}` for system configuration
- `/var/log/{APP}` for logs
- `/srv/{APP}` for served data

Shell examples keep shell variables:

```sh
APP="$APP_NAME"
APP_USER="$APP"
APP_GROUP="$APP"
APP_HOME="/home/$APP"
APP_ROOT="/home/$APP/$APP_LAUNCHER"
APP_CONFIG="$APP_ROOT/config"
APP_DATA="$APP_ROOT/data"
APP_LOG="$APP_ROOT/logs"
APP_CACHE="$APP_ROOT/cache"
```

## Corrected prompt database storage example

The v0.1 prompt database path `CUSTOMER_MODE/PROMPTS/AI/{AI_FAMILY}/{TASK_CLASS}.md` is a future canonical layout proposal only. Current allowed CUSTOMER_MODE installer storage is:

```text
CUSTOMER_MODE/INSTALLER/PROMPT_DATABASE/AI/{AI_FAMILY}/{TASK_CLASS}.md
```

## Retained mandatory installer rules

Installer scripts generated under this directive still MUST:

1. search for existing package/app/launcher/service/user/config/data/cache/log contents before mutation;
2. present found contents as numbered multiple-choice cleanup/quarantine choices with default keep;
3. detect OS, version, architecture, package manager, init system, current user, rights, PWD, hostname, IPs, remote/container/production state;
4. ask the right-PC confirmation and accept only `y`, `j`, or `n`;
5. avoid blind sudo/admin elevation;
6. avoid destructive cleanup by default;
7. avoid unbounded globs;
8. limit ownership and permissions to exact app paths;
9. research app-specific official install/service/security/update/uninstall docs before app-specific installers;
10. use least-privilege service users only when sensible or explicitly requested;
11. treat LAN home sharing as HIGH risk and prefer a dedicated authenticated share;
12. separate diagnosis, dry-run, apply, validation and rollback;
13. avoid storing secrets, raw logs, binaries, firmware, drivers or installer binaries;
14. never claim installed, fixed, validated, committed or promoted unless tool/user output proves it.

## Validation status

- Placeholder rendering issue: confirmed by raw/readback review of v0.1.
- This v0.1.1 file: proposed normalized revision, not yet applied until Owner/Admin apply.
- Runtime installer behavior: NOT_TESTED.
- Canonical MEMORY promotion: NOT_DONE.

## Rollback

If v0.1.1 is rejected, remove this file and keep v0.1 plus `PLACEHOLDER_NORMALIZATION_PATCH_v0.1.md` as the active patch plan.

# DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Mode: CUSTOMER_MODE draft / Owner-Admin review required for canonical MEMORY promotion  
Target class: installer scripts, service installers, package bootstrap scripts, local application deployment  
Risk class: MEDIUM by default; HIGH when deletion, root/admin, networking, firewall, SMB/LAN sharing, service accounts, production, remote/SSH, firmware/driver/vendor installer, or secrets are involved.  
Evidence level: E2/E3 source-guided proposal; not tool-validated in a target host.  

## Purpose

This directive defines mandatory safety, discovery, user-choice, platform, service-user, LAN-sharing, and research gates for Dr.Debug-generated installer scripts.

The directive is intentionally conservative:

- Diagnose before install.
- Discover before delete.
- Dry-run before apply.
- Ask before case-specific behavior.
- Least privilege before root.
- Rollback before mutation.
- Validation before success claims.

## Source basis

Internal Dr.Debug policy basis:

- `00_WORKING_MODE.md`: Owner/Admin writes require exact gate and `--apply`; default is proposal/customer-safe behavior.
- `01_REPOSITORY_CHANGE_WORKFLOW.md`: script safety metadata, dry-run/apply boundary, no blind sudo, quote variables, avoid unbounded globs, avoid recursive destructive operations.
- `02_RESEARCH_ARCHIVE_BINARY_SOURCES.md`: source hierarchy; research when version/currentness/security/installers matter.
- `05_RISK_REDACTION_PLATFORM.md`: platform gate before commands; data-loss classifier; remote/production safety.
- `06_KNOWLEDGE_TOOL_SYNC_AUDIT.md`: tool-claim rule and no background work.
- `04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md`: evidence levels, status lifecycle, dedupe before add, validation status.

External source classes used for this proposal:

- Linux/systemd official documentation: systemd.exec, service user directives, StateDirectory/CacheDirectory/LogsDirectory, DynamicUser.
- Linux os-release official documentation: OS identification through `/etc/os-release`.
- Filesystem Hierarchy Standard: `/opt`, `/var/lib`, `/var/log`, `/usr/local` semantics.
- Microsoft documentation: service accounts, PowerShell platform detection, SMB shares.
- Apple launchd documentation: LaunchDaemons/LaunchAgents and system daemon behavior.
- Samba documentation: `smb.conf` share configuration and access controls.
- App-specific official docs when known. Example: ArchiSteamFarm systemd service guidance recommends non-root `asf` user and `/home/<user>/ArchiSteamFarm` structure for that app.

## Mandatory installer script metadata header

Every generated installer script MUST include a metadata header before executable logic:

```yaml
name:
version:
status: PROPOSAL_ONLY | DRY_RUN_READY | APPLY_READY | USER_VERIFIED
purpose:
app_name:
package_name:
app_launcher:
case_id: null
platforms:
  linux:
  macos:
  windows:
shell_or_runtime:
risk_class: NONE | LOW | MEDIUM | HIGH | IRREVERSIBLE
root_or_admin_required: true|false|conditional
network_required: true|false|conditional
destructive: true|false
backup_required: true|false
rollback_available: true|false
validation_status: NOT_TESTED | DRY_RUN_ONLY | TOOL_OUTPUT | USER_CONFIRMED
source_status: USER_ASSERTION | SOURCE_GUIDED | OFFICIAL_SOURCE | TOOL_VALIDATED
source_refs:
redaction_checked: true|false
created_at:
updated_at:
```

## Installer generation state machine

Installer scripts MUST move through these stages:

1. `REQUEST_INTAKE`
2. `PACKAGE_DISCOVERY`
3. `PLATFORM_GATE`
4. `RIGHT_HOST_CONFIRMATION`
5. `INSTALL_LAYOUT_DECISION`
6. `USER_ACCOUNT_DECISION`
7. `CASE_DECISION`
8. `LAN_HOME_DECISION`
9. `PERMISSION_PLAN`
10. `BACKUP_AND_ROLLBACK_PLAN`
11. `DRY_RUN_SCRIPT`
12. `USER_REVIEW`
13. `APPLY_SCRIPT` only after explicit apply or runtime confirmation
14. `VALIDATION`
15. `USER_CONFIRMED_RESULT`
16. `WORKFLOW_RECORD` only after successful user confirmation

No script may skip from request to mutation.

## 1. Existing-content discovery before install

### 1.1 Search before mutation

Before installing, upgrading, reinstalling, or removing anything, the script MUST search for existing contents related to:

- package name
- application name
- launcher/binary name
- service name
- system user name
- group name
- config directory
- data/state directory
- cache directory
- log directory
- desktop shortcut / autostart item
- package-manager record
- container/unit record if applicable

Discovery MUST be read-only.

### Linux discovery examples

Allowed read-only discovery commands, selected by environment:

```sh
command -v "$APP_LAUNCHER" 2>/dev/null || true
getent passwd "$APP_USER" || true
getent group "$APP_GROUP" || true
systemctl list-unit-files --type=service --no-pager 2>/dev/null | grep -F "$APP" || true
systemctl list-units --type=service --all --no-pager 2>/dev/null | grep -F "$APP" || true
find "$HOME" /opt /usr/local /etc /var/lib /var/log /srv -maxdepth 4 \
  \( -iname "*$APP*" -o -iname "*$APP_LAUNCHER*" -o -iname "*$PACKAGE_NAME*" \) \
  -print 2>/dev/null || true
```

Package manager probes must be conditional and read-only:

```sh
if command -v dpkg >/dev/null 2>&1; then dpkg -l | grep -i -- "$PACKAGE_NAME" || true; fi
if command -v rpm >/dev/null 2>&1; then rpm -qa | grep -i -- "$PACKAGE_NAME" || true; fi
if command -v pacman >/dev/null 2>&1; then pacman -Qs "$PACKAGE_NAME" || true; fi
if command -v flatpak >/dev/null 2>&1; then flatpak list | grep -i -- "$APP" || true; fi
if command -v snap >/dev/null 2>&1; then snap list | grep -i -- "$APP" || true; fi
```

### macOS discovery examples

```sh
command -v "$APP_LAUNCHER" 2>/dev/null || true
find /Applications "$HOME/Applications" /usr/local /opt /Library/LaunchDaemons /Library/LaunchAgents \
  -maxdepth 4 \( -iname "*$APP*" -o -iname "*$PACKAGE_NAME*" \) -print 2>/dev/null || true
launchctl list 2>/dev/null | grep -i -- "$APP" || true
```

### Windows PowerShell discovery examples

```powershell
Get-Command $AppLauncher -ErrorAction SilentlyContinue
Get-Service | Where-Object { $_.Name -like "*$App*" -or $_.DisplayName -like "*$App*" }
Get-ChildItem -Path $env:ProgramFiles, ${env:ProgramFiles(x86)}, $env:ProgramData, $env:USERPROFILE -Recurse -Depth 4 -ErrorAction SilentlyContinue |
  Where-Object { $_.FullName -like "*$App*" -or $_.FullName -like "*$PackageName*" }
Get-Package -Name "*$PackageName*" -ErrorAction SilentlyContinue
```

### 1.2 Multiple-choice deletion selection

If existing content is found, the installer MUST NOT delete automatically.

It MUST present a multiple-choice list with:

- numbered findings
- type: package, directory, service, user, config, data, log, cache, shortcut
- path/name
- owner/group or ACL if available
- last modified time if available
- estimated risk
- default action: keep

Required prompt behavior:

```text
Existing related content was found.
Select what should be removed/quarantined before installation.
Enter comma-separated numbers, 'a' for all low-risk quarantine candidates, 'k' to keep all, or 'q' to abort.
Default: keep all.
```

Rules:

- Free-form paths MUST NOT be accepted.
- Empty input means keep all.
- `q` aborts.
- Direct deletion requires a second confirmation and backup/quarantine plan.
- Prefer moving to a timestamped quarantine directory over deletion.
- Destructive delete needs explicit destructive gate and rollback note.
- Never recursively delete `/`, `/home`, `/etc`, `/usr`, `/var`, `/opt`, `$HOME`, `%USERPROFILE%`, `%ProgramFiles%`, or broad glob expansions.

## 2. Multi-OS platform gate

### 2.1 Required platform research and runtime detection

Before generating commands, Dr.Debug MUST determine or ask for:

- OS family
- distribution/system
- version
- kernel/build
- CPU architecture
- shell/runtime
- package manager
- init/service system
- root/admin rights
- current user
- current working directory
- local/SSH/remote session
- container/chroot/proot/WSL/recovery/live environment
- production status
- backup availability
- rollback path
- data-loss risk
- lockout risk
- network/firewall risk

A generated script MUST print these facts before mutation.

### Linux detection minimum

```sh
printf 'User: %s\n' "$(id -un)"
printf 'UID: %s\n' "$(id -u)"
printf 'Groups: %s\n' "$(id -Gn)"
printf 'PWD: %s\n' "$(pwd -P)"
printf 'Kernel: %s\n' "$(uname -a)"
if [ -r /etc/os-release ]; then . /etc/os-release; printf 'OS: %s %s\n' "${NAME:-unknown}" "${VERSION_ID:-unknown}"; fi
printf 'Init: %s\n' "$(ps -p 1 -o comm= 2>/dev/null || true)"
printf 'Hostname: %s\n' "$(hostname 2>/dev/null || true)"
printf 'IPs:\n'
hostname -I 2>/dev/null || ip -brief addr 2>/dev/null || true
```

### Windows detection minimum

```powershell
Write-Host "User: $env:USERNAME"
Write-Host "Computer: $env:COMPUTERNAME"
Write-Host "PWD: $(Get-Location)"
Get-ComputerInfo | Select-Object OsName, OsVersion, OsArchitecture, WindowsVersion
Get-NetIPAddress -AddressFamily IPv4 -ErrorAction SilentlyContinue | Select-Object InterfaceAlias,IPAddress
Write-Host "IsAdmin: $([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)"
```

### macOS detection minimum

```sh
printf 'User: %s\n' "$(id -un)"
printf 'UID: %s\n' "$(id -u)"
printf 'PWD: %s\n' "$(pwd -P)"
sw_vers
uname -a
hostname
ifconfig | grep 'inet ' || true
```

### 2.2 Right-PC confirmation gate

Before mutation, installer scripts MUST confirm they are running on the intended PC.

The script MUST print hostname and IP information, then ask:

```text
Is this the correct PC for installing <APP>? Hostname: <hostname> IP: <ip-list>
Confirm with 'y' or 'j'. Abort with 'n'. Other input is rejected.
```

Accepted values:

- `y` = yes
- `j` = ja
- `n` = no/abort

All other input MUST reprompt or abort safely. For unattended mode, this gate may only be bypassed with an explicit signed/recorded noninteractive flag and equivalent host assertion.

Portable shell pattern:

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

## 3. System user directive

### 3.1 Default position

For long-running services, daemons, bots, web apps, sync agents, background workers, game/server automation, CI runners, or apps that listen on a port, a dedicated system user is usually safer than running as root or as the interactive human user.

For simple CLI tools, GUI desktop apps, package-manager-managed apps, browser extensions, and tools that naturally belong to a user session, a dedicated system user may be unnecessary or harmful.

### 3.2 Mandatory app-specific research

Before deciding, Dr.Debug MUST research or ask for official upstream guidance about:

- supported install layout
- service user recommendation
- root/non-root requirement
- required writable directories
- service manager examples
- update method
- logging path
- config path
- secrets path
- file ownership requirements
- network ports
- LAN/remote-access behavior

Priority:

1. official app docs
2. official repository
3. distribution package documentation
4. service manager docs
5. well-established community examples
6. user assertion only

### 3.3 Decision: Is a system user sensible?

Decision matrix:

Use dedicated system user when:

- app runs unattended as a service
- app has persistent state
- app writes logs/cache/data
- app has network listener or automation token
- app should survive logout
- app should be isolated from human `$HOME`
- official docs recommend it

Avoid or ask more when:

- app needs desktop GUI session
- app requires user keychain/session credentials
- app should access the human user's files broadly
- app is managed by OS package manager with its own service account
- app is temporary or single-command
- app expects interactive shell state

### 3.4 Case-fall question

If installer behavior depends on customer environment, storage paths, credentials, LAN sharing, service identity, migration, or cleanup, Dr.Debug MUST ask whether this is a case-specific installation.

Prompt:

```text
Is this a case-specific installer for a concrete customer/device/system? y/j/n
```

If yes, script metadata MUST include:

```yaml
case_specific: true
case_id:
case_scope:
redaction_checked:
customer_data_present: false|redacted|required_but_missing
```

### 3.5 Explicit request for system-user installation

If the user explicitly wants system-user installation, Dr.Debug MUST:

1. Research app-specific write requirements.
2. Identify all writable directories.
3. Create user/group with no login shell where appropriate.
4. Avoid root-owned writable app data unless required.
5. Set ownership only on app-specific paths.
6. Avoid recursive ownership changes outside the app root.
7. Generate a permission plan.
8. Generate rollback for user, group, service, files, firewall and shares.
9. Validate by running the app as that user, not as root.

Linux service-user defaults:

```sh
APP_USER="${APP_USER:-$APP}"
APP_GROUP="${APP_GROUP:-$APP}"
APP_HOME="/home/$APP_USER"
APP_ROOT="$APP_HOME/$APP_LAUNCHER"

if ! getent group "$APP_GROUP" >/dev/null; then
  sudo groupadd --system "$APP_GROUP"
fi
if ! getent passwd "$APP_USER" >/dev/null; then
  sudo useradd --system --gid "$APP_GROUP" --home-dir "$APP_HOME" --create-home --shell /usr/sbin/nologin "$APP_USER"
fi
sudo install -d -o "$APP_USER" -g "$APP_GROUP" -m 0750 "$APP_ROOT"
```

Important: use `sudo` only after the script has proven admin rights are needed and the user has confirmed. Do not blindly prefix all commands with `sudo`.

### 3.6 LAN-reachable home directive

If the user explicitly wants the app user's home directory reachable over LAN, this MUST be treated as HIGH risk.

Before implementing, ask and record:

- Which protocol: SMB, NFS, SFTP, WebDAV, other?
- Which clients/subnet may access it?
- Read-only or read-write?
- Which user credentials will be used?
- Is this production or private LAN?
- Are secrets, tokens, configs, SSH keys, cookies or backups inside the home?
- Is firewall exposure required?
- Is there an alternate safer share directory?

Default recommendation:

- Do not share the entire app home.
- Prefer a dedicated subdirectory such as `/home/$APP/shared` or `/srv/$APP-share`.
- Never expose secrets/config/token directories.
- Require authentication.
- Restrict to explicit users and LAN subnets.
- Log access.
- Provide rollback.

Samba-style Linux plan must include:

- package requirement
- share path
- ownership
- mode
- `valid users`
- no guest access by default
- firewall plan
- testparm validation
- rollback: remove share, reload service, optionally remove firewall rule

Windows SMB plan must include:

- `New-SmbShare` only with explicit path and principals
- NTFS ACL plan
- firewall profile check
- rollback with `Remove-SmbShare`

### 3.7 Installation layout directive

If service-user layout is selected and no upstream layout is more appropriate:

```text
/home/$APP/$APP_LAUNCHER
```

Expanded Linux defaults:

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

However, Dr.Debug MUST not blindly force `/home/$APP/$APP_LAUNCHER` if official docs or OS packaging indicate a safer or canonical layout.

Alternative layouts:

- `/opt/<app>` for add-on application binaries
- `/var/lib/<app>` for persistent service state
- `/etc/<app>` for system configuration
- `/var/log/<app>` for logs
- `/srv/<app>` for served data
- package-manager-managed paths when installed from distro packages
- systemd `StateDirectory=`, `CacheDirectory=`, `LogsDirectory=` where appropriate

Decision rule:

- Official app docs win when safe.
- Distro packages win for distro-managed installs.
- systemd-managed directories are preferred for hardened services.
- `/home/$APP/$APP_LAUNCHER` is acceptable for app-specific service-user installs, especially when upstream examples use a dedicated user home.

## Safe installer workflow template

Every installer directive should produce:

1. `diagnose.sh` or `diagnose.ps1` read-only
2. `plan.md`
3. `install.dry-run.sh` or `.ps1`
4. `install.apply.sh` or `.ps1` only after explicit confirmation
5. `rollback.sh` or `.ps1`
6. `validation.sh` or `.ps1`
7. `MANIFEST.json`
8. `SHA256SUMS.txt` for bundle integrity
9. `README.md`
10. `VALIDATION.md`

## Destructive operation rules

Any deletion, user removal, package purge, service removal, share removal, firewall change, or ownership change beyond app-specific paths requires:

- data-loss classifier
- backup or quarantine
- exact affected path list
- explicit user selection
- second confirmation
- rollback plan
- dry-run output
- destructive gate if repository/storage action is involved

Forbidden patterns:

```sh
rm -rf "$VAR"
rm -rf $UNQUOTED
rm -rf /home/*
chown -R user:user /home
chmod -R 777 .
sudo sh -c "curl ... | sh"
```

## Research requirement for installer generation

Before finalizing an installer script for a specific app, perform source review:

1. official installation docs
2. official service/daemon docs
3. official security docs
4. official update/uninstall docs
5. official repository release notes if relevant
6. OS-specific packaging docs
7. service manager docs
8. filesystem layout docs
9. community examples only if official docs are absent
10. issue tracker only for known caveats

Record:

```yaml
source_records:
  - url:
    title:
    source_class:
    publisher:
    retrieved_at:
    scope:
    versions:
    claim_supported:
    limitations:
```

## ChatGPT / AI method directive

Installer-script prompts MUST require the AI to output:

- assumptions
- missing facts
- platform gate
- read-only diagnosis first
- no destructive action by default
- no blind sudo/admin elevation
- no unbounded globbing
- exact paths
- quoting of variables
- rollback
- validation
- risk classification
- source list
- dry-run/apply separation

Prompt pattern:

```text
You are generating a safety-first installer script.
First produce a read-only diagnosis stage.
Do not delete, chown, chmod, purge, overwrite, expose LAN shares, open firewall ports, or create system users until explicit confirmation.
Detect OS, package manager, init system, hostname, IPs, current user, rights, PWD, remote/container/production state.
Search for existing app/package contents and present a numbered multiple-choice keep/quarantine/remove plan.
Ask whether this is the correct PC; accept only y/j/n.
Research official installation, service-user, permission, update, uninstall, and security docs.
If service user is requested, install under /home/$APP/$APPLAUNCHER only when upstream docs do not specify a better layout.
If LAN home access is requested, treat as HIGH risk and prefer a dedicated share directory with authentication and rollback.
Return plan, script, validation, and rollback.
```

## 100-step manifestation checklist

Before this directive can be promoted from proposal to canonical Dr.Debug Knowledge, complete the following 100 checks.

### Gate and repository checks

1. Owner/Admin gate verified.
2. Repository context verified.
3. Default branch identified.
4. Current README read.
5. AGENTS.md read.
6. UPDATE_PROCESS.md read.
7. MEMORY/INDEX.md read.
8. Relevant installer/script policy files identified.
9. Duplicate directive search completed.
10. Canonical target path selected.
11. README matrix update need assessed.
12. Changelog need assessed.
13. Rollback path documented.
14. Dry-run path policy checked.
15. Apply flag present only for write.

### Platform and OS checks

16. Linux detection covered.
17. macOS detection covered.
18. Windows detection covered.
19. WSL detection considered.
20. Container/chroot/proot detection considered.
21. SSH/remote session considered.
22. Production safety considered.
23. Admin/root rights considered.
24. Current user detection considered.
25. Current directory detection considered.
26. Architecture detection considered.
27. Init/service manager detection considered.
28. Package manager detection considered.
29. Network/firewall context considered.
30. Backup/rollback context considered.

### Existing content discovery checks

31. Package-name search covered.
32. App-name search covered.
33. Launcher search covered.
34. Service search covered.
35. User/group search covered.
36. Config search covered.
37. Data/state search covered.
38. Cache search covered.
39. Log search covered.
40. Shortcut/autostart search covered.
41. Package-manager records covered.
42. Container/unit records considered.
43. Findings typed/classified.
44. Risk shown per finding.
45. Default keep behavior defined.

### Deletion/quarantine checks

46. Multiple-choice selection defined.
47. Free-form path deletion rejected.
48. Empty input keeps all.
49. Abort option defined.
50. Quarantine preferred over delete.
51. Second confirmation required for delete.
52. Broad path deletion forbidden.
53. Recursive chmod/chown safeguards defined.
54. Data-loss classifier included.
55. Rollback for cleanup included.

### Right-host checks

56. Hostname printed.
57. IPs printed.
58. Correct-PC question defined.
59. `y` accepted.
60. `j` accepted.
61. `n` aborts.
62. Other input rejected.
63. Noninteractive bypass constrained.
64. Remote/SSH lockout considered.
65. User-visible abort message included.

### System-user checks

66. System-user default criteria defined.
67. Avoid-system-user criteria defined.
68. Official app docs required.
69. Writable directories identified.
70. User/group creation safe pattern included.
71. No-login shell considered.
72. Ownership limited to app paths.
73. App run-as-user validation included.
74. systemd unit hardening considered.
75. DynamicUser/StateDirectory alternative considered.

### Case and LAN checks

76. Case-specific question included.
77. Case metadata schema included.
78. Redaction check included.
79. LAN-home opt-in required.
80. LAN-home risk HIGH.
81. Whole-home share discouraged.
82. Dedicated share preferred.
83. Secrets excluded.
84. Authentication required.
85. Firewall rollback included.
86. Samba validation considered.
87. Windows SMB validation considered.

### Layout checks

88. `/home/$APP/$APP_LAUNCHER` rule stated.
89. Official docs override stated.
90. Distro package override stated.
91. FHS alternatives listed.
92. systemd managed directories listed.
93. App-specific example considered.
94. Config/data/log/cache paths separated.
95. Permissions documented.

### Prompt and AI checks

96. AI prompt method requirements defined.
97. Prompt database per AI family defined.
98. Prompt schema defined.
99. Prompt eval cases defined.
100. Canonical promotion requires review, dedupe, source records, validation and apply.

## Validation requirements for a generated installer

A generated installer is not valid until:

- syntax check passes
- shellcheck or equivalent static review where applicable
- dry-run prints platform facts
- existing-content scan works
- multiple-choice cleanup does not mutate unless confirmed
- right-host confirmation works with `y`, `j`, `n`, invalid input
- service-user creation is skipped unless selected
- permissions are only applied to app-specific paths
- LAN share is skipped unless selected
- rollback script exists
- validation script confirms expected service/app state
- user confirms actual result for exact host/context

## Rollback requirements

Rollback must cover:

- created files/directories
- quarantined files/directories
- created user/group
- created services/LaunchDaemons/Windows services
- package installations where feasible
- firewall rules
- LAN shares
- scheduled tasks/autostart entries
- config changes
- logs of actions performed

## Status and promotion

This directive remains `PROPOSAL_ONLY` until:

1. duplicate search passes
2. source records are attached
3. README knowledge matrix impact is checked
4. AGENTS/UPDATE_PROCESS/MEMORY/INDEX references are evaluated
5. at least one generated installer is dry-run validated
6. Owner/Admin applies the proposal with exact `--apply`
7. validation output confirms repository write

No canonical claim is allowed before that.
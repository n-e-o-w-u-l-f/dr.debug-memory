---
title: "systemd service fails with status=203/EXEC"
status: DRAFT
component: "systemd service manager"
platform: "Linux"
device: "Unknown"
manufacturer: "N/A"
model: "N/A"
version: "Unknown; systemd-version-specific behavior must be checked on target host"
firmware: "N/A"
driver: "N/A"
error_signature:
  - "code=exited, status=203/EXEC"
  - "Failed at step EXEC spawning"
  - "Main process exited, code=exited, status=203/EXEC"
normalized_signature: "systemd.service EXEC spawn failure status 203 EXEC"
symptoms:
  - "Service immediately fails to start."
  - "Restart policy may create repeated restart attempts."
  - "Manual command may work while service context fails."
primary_error: "systemd cannot execute the command configured in ExecStart or a related Exec* directive."
secondary_errors:
  - "Start request repeated too quickly"
  - "Failed with result 'exit-code'"
cause: "Unconfirmed in this draft. Common causes include missing path, inaccessible executable, missing executable bit, invalid shebang/interpreter, noexec mount, wrong User/WorkingDirectory context, or MAC policy such as SELinux/AppArmor."
hypothesis: "If the exact log contains status=203/EXEC, first verify ExecStart path, interpreter/shebang, permissions and service user access before editing the unit."
diagnosis:
  - "Read-only: systemctl status <unit> --no-pager"
  - "Read-only: systemctl cat <unit> --no-pager"
  - "Read-only: systemctl show <unit> -p FragmentPath -p ExecStart -p User -p WorkingDirectory -p MainPID -p Result"
  - "Read-only: journalctl -u <unit> -n 120 --no-pager"
  - "Read-only: inspect ExecStart target path, interpreter, executable bit and mount flags."
fix:
  - "DRAFT only: correct ExecStart to an absolute existing executable or explicit interpreter invocation."
  - "DRAFT only: fix file permissions only on the specific executable/script, never recursively over system paths."
  - "DRAFT only: add/fix shebang if the target is a script."
  - "DRAFT only: run systemctl daemon-reload after unit-file changes."
validation:
  - "systemd-analyze verify <unit-file> where available."
  - "systemctl status <unit> shows active/running or the expected terminal state."
  - "journalctl -u <unit> shows no fresh 203/EXEC after restart."
risk: "Low for diagnosis. Medium for repair because unit edits can break service startup. High if service is remote access, firewall, boot, storage or production-critical."
backup:
  - "Before editing: copy the unit file and drop-ins to a timestamped backup."
  - "Record systemctl cat output before changes."
rollback:
  - "Restore prior unit/drop-in from backup."
  - "systemctl daemon-reload"
  - "restart or stop service according to operational plan."
prevention:
  - "Use absolute paths in ExecStart."
  - "Validate units with systemd-analyze verify in CI or pre-deploy checks."
  - "Keep service executables outside private home directories unless access is intentional and verified."
sources:
  - source_id: "systemd_exec_exit_203_exec"
    url: "https://www.freedesktop.org/software/systemd/man/systemd.exec.html"
    source_class: "SOURCE_CLASS_A_PRIMARY"
    source_type: "MANPAGE_REFERENCE"
    checked_at: "2026-06-15"
  - source_id: "man7_systemctl"
    url: "https://www.man7.org/linux/man-pages/man1/systemctl.1.html"
    source_class: "SOURCE_CLASS_A_PRIMARY"
    source_type: "MANPAGE_REFERENCE"
    checked_at: "2026-06-15"
deduplication_notes: "Check for existing Linux/systemd error-code entries before merging. This may belong under a broader systemd error-code file rather than a standalone page."
open_questions:
  - "Is there already /MEMORY/ERROR_CODES or /MEMORY/SOFTWARE/SYSTEMD canonical area?"
  - "Should this be a playbook, error-code entry, or both?"
tags:
  - linux
  - systemd
  - service
  - status-203-exec
  - execstart
date: "2026-06-15"
---

# MEMORY_PROPOSAL: systemd `status=203/EXEC`

## Redigierter Originalauszug

```text
.service: Main process exited, code=exited, status=203/EXEC
.service: Failed with result 'exit-code'
```

## Sicherer Diagnosepfad

Das beigefügte Skript `SCRIPTS/scripts/debug/systemd_203_exec_triage.sh` ist nur lesend ausgelegt und soll vor jedem Fix ausgeführt werden.

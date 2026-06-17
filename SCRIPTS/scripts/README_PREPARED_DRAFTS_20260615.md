# Prepared script drafts — 2026-06-15

Status: REVIEW_REQUIRED

## Files

- `SCRIPTS/scripts/debug/systemd_203_exec_triage.sh`
- `SCRIPTS/scripts/debug/windows_basic_discovery.ps1`
- `SCRIPTS/scripts/verify/memory_repo_lint.py`

## Safety summary

All scripts are designed as read-only defaults. They do not delete, format, flash, partition, install packages, restart services, change permissions, write bootloaders or exfiltrate secrets.

Output still needs human review before sharing because hostnames, usernames, hardware IDs or local paths may be sensitive.

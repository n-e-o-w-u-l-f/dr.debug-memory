# 05_RISK_REDACTION_PLATFORM.md
Version: 0.8.0-proposal
Scope: Redaction, privacy, platform gate, risk, backup, rollback, remote safety
Replaces: 07_REDACTION_PRIVACY.md, 13_RISK_PLATFORM.md

## Redaction rule

Redact passwords, tokens, API keys, SSH keys, certificates, cookies, emails, personal names, customer data, serial numbers unless essential, sensitive private IPs/hostnames and full raw logs.

Before proposal/repository storage, report redacted categories without revealing secret values.

Store minimal log extracts only: primary error, context, component, version and validation output. Do not store raw crawl dumps.

## Platform gate before commands

Before technical commands, identify OS family, distribution/system, version, kernel/build, architecture, shell, package manager, init system, root/admin rights, local/SSH, container/chroot/proot/WSL/recovery/live context, production status, backup, rollback, lockout risk and data-loss risk.

## Data-loss classifier

Use `NONE`, `LOW`, `MEDIUM`, `HIGH` and `IRREVERSIBLE`.

## Remote safety

SSH, firewall and network changes require remote context, alternate access and rollback. Production systems require maintenance window, backup, rollback, validation and abort criteria.

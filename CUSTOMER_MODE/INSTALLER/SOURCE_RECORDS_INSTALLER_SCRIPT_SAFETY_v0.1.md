# SOURCE_RECORDS_INSTALLER_SCRIPT_SAFETY_v0.1

Status: PROPOSAL_SOURCE_RECORDS  
Created: 2026-06-27  
Scope: Source records supporting the installer-script safety proposal.  
Validation: SOURCE_CONFIRMED where a public source was reachable; DISCOVERY_ONLY where retrieval was limited.

## Internal repository sources

- url: `AGENTS.md`
  title: Repository agent directive
  source_class: internal_repository_directive
  publisher: Dr.Debug repository
  retrieved_at: 2026-06-27
  claim_supported: CUSTOMER_MODE may persist sanitized customer artifacts only under `CUSTOMER_MODE/**`; canonical MEMORY writes require Owner/Admin review.
  limitations: internal policy, not external technical authority.

- url: `UPDATE_PROCESS.md`
  title: Repository update workflow
  source_class: internal_repository_directive
  publisher: Dr.Debug repository
  retrieved_at: 2026-06-27
  claim_supported: Before writes, verify scope, inspect status, load relevant files, dedupe, dry-run, redaction/source/status checks, README matrix when MEMORY/Knowledge changes, changelog and rollback.
  limitations: internal policy, not external technical authority.

- url: `MEMORY/INDEX.md`
  title: MEMORY index
  source_class: internal_repository_index
  publisher: Dr.Debug repository
  retrieved_at: 2026-06-27
  claim_supported: Indexes are navigation only; matrix duty applies when Knowledge/MEMORY is searched, changed or proposals/candidates are created.
  limitations: navigation only, not canonical technical record.

## External technical sources

- url: `https://www.freedesktop.org/software/systemd/man/systemd.exec.html`
  title: systemd.exec
  source_class: official_project_docs
  publisher: systemd / freedesktop.org
  retrieved_at: 2026-06-27
  claim_supported: `DynamicUser=`, `StateDirectory=`, `CacheDirectory=`, `LogsDirectory=` and managed writable directories are relevant for safe service-user workflows.
  limitations: official page retrieval may be blocked by some clients; mirror/manpage readback may be needed for exact excerpts.

- url: `https://www.freedesktop.org/software/systemd/man/os-release.html`
  title: os-release
  source_class: official_project_docs
  publisher: systemd / freedesktop.org
  retrieved_at: 2026-06-27
  claim_supported: `/etc/os-release` fields such as `ID`, `VERSION_ID` and `ID_LIKE` are appropriate for OS/distro detection.
  limitations: rolling distributions may omit version fields.

- url: `https://refspecs.linuxfoundation.org/FHS_3.0/fhs-3.0.html`
  title: Filesystem Hierarchy Standard 3.0
  source_class: standard
  publisher: Linux Foundation
  retrieved_at: 2026-06-27
  claim_supported: `/opt`, `/etc`, `/var`, `/var/lib`, `/var/log` and related layout decisions should be considered before forcing `/home/{APP}/{APP_LAUNCHER}`.
  limitations: dated but still useful for Unix-like layout reasoning.

- url: `https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-service-accounts`
  title: Service accounts in Windows Server
  source_class: official_vendor_docs
  publisher: Microsoft
  retrieved_at: 2026-06-27
  claim_supported: Windows service accounts provide security context for services and should be chosen based on local/network resource needs.
  limitations: Some account types apply only to listed Windows Server versions and domain environments.

- url: `https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables?view=powershell-7.6`
  title: PowerShell automatic variables
  source_class: official_vendor_docs
  publisher: Microsoft
  retrieved_at: 2026-06-27
  claim_supported: `$IsWindows`, `$IsLinux` and `$IsMacOS` are available for platform detection in PowerShell.
  limitations: PowerShell version matters.

- url: `https://learn.microsoft.com/en-us/powershell/module/smbshare/new-smbshare?view=windowsserver2025-ps`
  title: New-SmbShare
  source_class: official_vendor_docs
  publisher: Microsoft
  retrieved_at: 2026-06-27
  claim_supported: Windows SMB share creation requires explicit share name, fully qualified path and access principals; `-WhatIf` does not work for this cmdlet.
  limitations: Requires Windows SMB server capability and permissions.

- url: `https://learn.microsoft.com/en-us/powershell/module/smbshare/remove-smbshare?view=windowsserver2025-ps`
  title: Remove-SmbShare
  source_class: official_vendor_docs
  publisher: Microsoft
  retrieved_at: 2026-06-27
  claim_supported: Removing SMB shares can forcibly disconnect clients and may cause data loss, so rollback/removal needs caution.
  limitations: Windows-specific.

- url: `https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html`
  title: Creating Launch Daemons and Agents
  source_class: official_vendor_docs
  publisher: Apple
  retrieved_at: 2026-06-27
  claim_supported: launchd is preferred for macOS daemons/agents; LaunchDaemons and LaunchAgents have different user/session behavior.
  limitations: Apple archive documentation; exact modern macOS details may require current manpages.

- url: `https://www.samba.org/samba/docs/current/man-html/smb.conf.5.html`
  title: smb.conf
  source_class: official_project_docs
  publisher: Samba Team
  retrieved_at: 2026-06-27
  claim_supported: Samba shares require explicit configuration and access controls; share policy must not default to guest/full-home exposure.
  limitations: Exact distro packaging/firewall commands vary.

## External AI prompt sources

- url: `https://help.openai.com/en/articles/6654000-best-practices-for-prompt-engineering-with-the-openai-api`
  title: Best practices for prompt engineering with the OpenAI API
  source_class: official_vendor_docs
  publisher: OpenAI
  retrieved_at: 2026-06-27
  claim_supported: Prompt instructions should be clear, specific and structured.
  limitations: API-oriented; ChatGPT/GPT instructions may differ.

- url: `https://help.openai.com/en/articles/8554397-creating-and-editing-gpts`
  title: Creating and editing GPTs
  source_class: official_vendor_docs
  publisher: OpenAI
  retrieved_at: 2026-06-27
  claim_supported: Knowledge files should be reference material; behavior/workflow belongs in instructions.
  limitations: Product behavior may change.

- url: `https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview`
  title: Prompt engineering overview
  source_class: official_vendor_docs
  publisher: Anthropic
  retrieved_at: 2026-06-27
  claim_supported: Claude prompts should be developed against controllable success criteria and evaluated iteratively.
  limitations: Claude-specific.

- url: `https://ai.google.dev/gemini-api/docs/prompting-strategies`
  title: Prompt design strategies
  source_class: official_vendor_docs
  publisher: Google
  retrieved_at: 2026-06-27
  claim_supported: Prompt design is iterative and aims to elicit accurate, high-quality responses.
  limitations: Gemini-specific.

## Source-status conclusion

These sources are sufficient for a CUSTOMER_MODE proposal and static review artifacts. They are not sufficient for canonical MEMORY promotion until duplicates, exact canonical target, README matrix impact, CHANGES impact and at least one generated installer dry-run are reviewed.

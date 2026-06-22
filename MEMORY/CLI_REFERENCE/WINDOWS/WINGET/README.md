# WinGet CLI Reference

Version: 0.1.0
Status: OFFICIAL_SOURCE_STARTED
Scope: Windows Package Manager command reference starter

## Identity

```yaml
id: CLI-WINDOWS-WINGET
command: winget
system_scope: Windows
shell_scope: PowerShell or cmd.exe
target_environment: Windows application/package management
risk_level: read_only_to_system_change_by_subcommand
source_status: official_source_started
```

## Purpose

`winget` is the Windows Package Manager command-line tool used to search, install, upgrade, uninstall, configure, download and repair applications on supported Windows systems.

## Architecture relation

- Host side: Windows.
- Shell side: PowerShell or Command Prompt.
- Package scope: Windows Package Manager sources and manifests.
- Not a Linux package manager.

## Syntax shape

```text
winget [global-options] <command> [command-options] [arguments]
```

## Starter commands

```text
winget search <query>
winget show <package>
winget install <package>
winget list
winget upgrade
winget upgrade --all
winget uninstall <package>
winget source list
winget source update
winget export -o <file>
winget import -i <file>
winget download <package>
winget repair <package>
winget --info
winget --version
winget --help
```

## Safety notes

- Install, upgrade, uninstall, import, configure and repair can change the system.
- Use `winget search`, `winget show`, `winget list`, `winget --info` and `winget --version` first for read-only diagnostics.
- Use source and package identifiers precisely to avoid installing the wrong package.

## Official sources

- https://learn.microsoft.com/en-us/windows/package-manager/winget/

## Research gaps

- Expand subcommand pages and options.
- Add troubleshooting records for common WinGet error codes.
- Add PowerShell module relation notes.

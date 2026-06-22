# CLI_REFERENCE_TEMPLATE

Version: 0.1.0
Status: REVIEW_BRANCH_BOOTSTRAP
Scope: CLI command reference records

## Required fields

```yaml
id: CLI-<SYSTEM>-<COMMAND>
command: <name>
system_scope: <windows | linux | android | cross_platform>
shell_scope: <powershell | cmd | bash | zsh | android_shell | bootloader>
target_environment: <host | device | bootloader | remote_service>
risk_level: read_only | changes_user_space | changes_system | destructive
source_status: official_source_started | official_source_complete | incomplete
```

## Required sections

1. Purpose
2. Relation to systems
3. Syntax shape
4. Common commands
5. Safety notes
6. Validation commands
7. Related memory nodes
8. Official sources
9. Open research gaps

## Rule

Do not claim a complete command reference until an official source pass has been completed and recorded.

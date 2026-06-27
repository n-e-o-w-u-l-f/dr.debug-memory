# VALIDATION_INSTALLER_SCRIPT_SAFETY_v0.1.1

Status: DRY_RUN_ONLY  
Created: 2026-06-27  
Scope: Validation update for placeholder normalization and diagnosis template static check.

## Readback findings

Raw GitHub readback of `DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1_PROPOSAL.md` confirmed that angle-bracket placeholders were rendered or parsed ambiguously in prose. Examples observed:

- `/home/<user>/ArchiSteamFarm` appeared as `/home//ArchiSteamFarn` or `/home//ArchiSteamFarm` depending on preview/readback context.
- `Is this the correct PC for installing <APP>? Hostname: <hostname> IP: <ip-list>` appeared with empty placeholder slots.
- Layout prose such as `/opt/<app>` appeared as `/opt/`.

## Corrective action prepared

`DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1.1_PROPOSAL.md` is prepared as a Markdown-safe normalized revision using `{APP}`, `{USER}`, `{HOSTNAME}`, `{IP_LIST}`, `{AI_FAMILY}` and `{TASK_CLASS}` in prose.

## Static check performed locally

`CUSTOMER_MODE/INSTALLER/TEMPLATES/install_safety_diagnose_template.sh` was checked with:

```sh
sh -n install_safety_diagnose_template.sh
```

Result:

```text
returncode: 0
stderr: empty
```

This confirms shell syntax only. It does not validate runtime behavior on a target machine.

## Remaining validation gaps

- No target OS runtime execution.
- No concrete app installer generated.
- No service-user creation tested.
- No LAN-share workflow tested.
- No canonical MEMORY promotion.
- No README root matrix update.

## Next safe step

Apply the v0.1.1 normalization bundle only with exact Owner/Admin `--apply`. After apply, read back the v0.1.1 file and confirm that no prose placeholder disappeared.

## Rollback

Remove `DIRECTIVE_INSTALLER_SCRIPT_SAFETY_v0.1.1_PROPOSAL.md` and this validation note if the normalized revision is rejected.

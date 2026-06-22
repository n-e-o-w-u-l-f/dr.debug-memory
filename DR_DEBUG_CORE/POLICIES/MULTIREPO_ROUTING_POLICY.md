# MULTIREPO_ROUTING_POLICY

Version: 0.1.0
Status: REVIEW_BRANCH_BOOTSTRAP
Scope: Dr.Debug repository role separation and routing

## Repository roles

| Repository | Role | Must contain | Must not become |
|---|---|---|---|
| `dr.debug-agents` | Agent brain | Policies, loaded knowledge, updated knowledge, agent directives | Technical repair database |
| `dr.debug-memory` | Technical memory | Knowledge records, CUSTOMER_MODE artifacts, CLI references, validated workflows | Website renderer or agent brain |
| `dr.debug-web` | Website renderer | CONTENT.md rendering, icons, images, `.nfo`, public endpoints | Canonical technical truth |
| `dr.debug-admin_api` | Controlled write gateway | Owner gate, repo routing, path policy, audit, OpenAPI | Memory database |

## Routing rules

- Agent behavior changes route to `dr.debug-agents`.
- Technical knowledge and repair records route to `dr.debug-memory`.
- Website display, assets and rendering logic route to `dr.debug-web`.
- Gate, auth, OpenAPI, repo-routing and path-policy code route to `dr.debug-admin_api`.

## Second-truth rule

Do not duplicate canonical data between repositories. Use stable references instead.

## Endpoint separation rule

Distinct technical endpoints must remain distinct. Aliases may help navigation but must not collapse identities.

Examples:

```text
SNES != Super Famicom
Intel Pentium P5 != Intel Pentium 66 MHz
adb host client != Android shell
fastboot bootloader mode != adb userspace mode
```

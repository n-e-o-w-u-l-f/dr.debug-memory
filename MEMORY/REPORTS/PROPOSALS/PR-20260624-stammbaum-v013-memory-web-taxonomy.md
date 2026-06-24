# Proposal Report — Stammbaum v0.13 Memory/Web taxonomy apply

id: PR-20260624-STAMMBAUM-V013-MEMORY-WEB
status: APPLIED_PROPOSAL_FILE_ONLY
created_at: 2026-06-24
canonical: false

## Scope

Applied as Memory proposal:
- high-detail electronics Stammbaum
- Dr.Debug-MEMORY text database role
- Dr.Debug-Web Jekyll renderer role
- PDF/manual translation artifact rule
- endpoint/branch splitting rule
- compact owner-requested Markdown table
- README matrix patch row proposal

## Gate result

Owner/admin command present:
- `DRDEBUG_OWNER_ADMIN=TRUE`
- `!dd`
- `--apply`

Repository status:
- target repo: `n-e-o-w-u-l-f/dr.debug-memory`
- action allowed: proposal write under `MEMORY/PROPOSALS/**`

## Repository read protocol

Read according to active directives:
1. `AGENTS.md`
2. `UPDATE_PROCESS.md`
3. `MEMORY/INDEX.md`
4. `README.md`
5. task-relevant Knowledge directives

Full blind repository read was not performed because repository directives say not to read everything blindly.

## Dr.Debug-Web limitation

The current GitHub write tool is scoped to `n-e-o-w-u-l-f/dr.debug-memory`.
No exact `Dr.Debug-Web` repository target and no write permission were available in this step.
Therefore the web structure was captured as a proposal in Memory only.

## README matrix handling

The README knowledge matrix was checked.
Direct README overwrite was not performed because the current table is marker/format sensitive and no safe exact patch API is available in this tool.
A proposed row is included in the proposal file.

Future safe README row:

```markdown
| Stammbaum v0.13 electronics memory/web proposal | PROPOSAL_ONLY | 1 proposal | 2026-06-24 | `MEMORY/PROPOSALS/2026-06-24-stammbaum-v0-13-electronics-memory-web-proposal.md`; counts unverified; no canonical promotion. |
```

## Redaction check

No secrets, passwords, keys, private logs, personal data, serial numbers, or credentials included.

## Safety check

Excluded:
- malware/exploit chains
- credential theft
- router/firewall bypass
- ROM downloads
- trainer downloads
- high-voltage repair instructions
- live mains wiring walkthroughs
- vehicle/HV service steps
- surveillance abuse

## Rollback

Delete or supersede:
- `MEMORY/PROPOSALS/2026-06-24-stammbaum-v0-13-electronics-memory-web-proposal.md`
- `MEMORY/REPORTS/PROPOSALS/PR-20260624-stammbaum-v013-memory-web-taxonomy.md`

No canonical records changed.
No README file changed.
No Dr.Debug-Web repository changed.

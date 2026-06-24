# Proposal Report — Stammbaum v0.13 Web Renderer / README Policy Addendum

id: PR-20260624-STAMMBAUM-V013-WEB-RENDERER-README-POLICY
status: APPLIED_PROPOSAL_FILE_ONLY
created_at: 2026-06-24
canonical: false

## Scope

Applied to `dr.debug-memory` as proposal-only documentation:

- JavaFX-inspired, Bootstrap/vanilla-JS Stammbaum interaction model
- all categories closed at first load
- removal of literal `[+]` / `[-]` UI logic
- zoom/slide branch-card expansion
- sibling cards slide/hide when obstructing active branch
- active branch content renderer with GitHub links to Memory/Web repositories
- PDF hover preview inside active branch box
- NFO / FILE_ID.DIZ monospace hover preview
- replacement of old `v0.7 Strukturregeln` content below the Stammbaum with a README renderer
- global README style/policy
- global `## 📊 Wissenstand` marker-block rule
- final `## 📰 Last Changes` rule
- distinction between `dr.debug-memory` and `dr.debug-web` roles

## Gate result

The user supplied:

```text
DRDEBUG_OWNER_ADMIN=TRUE git_write=true git_repo dr.debug-memory dr.debug-web !dd memory proposal Stammbaum/v0.13-web-renderer-readme-policy --apply
```

The available write tool is scoped to:

```text
n-e-o-w-u-l-f/dr.debug-memory
```

Therefore only the Memory proposal/report were applied. No write to `dr.debug-web` was performed or claimed.

## Dr.Debug-Web intended files

The proposal documents intended future web changes for:

```text
dr.debug-web/_config.yml
dr.debug-web/index.html
dr.debug-web/_includes/tree_node.html
dr.debug-web/_includes/readme_renderer.html
dr.debug-web/_includes/artifact_preview.html
dr.debug-web/_includes/last_changes.html
dr.debug-web/assets/css/stammbaum_fx.css
dr.debug-web/assets/js/stammbaum_fx.js
dr.debug-web/_data/last_changes.yml
dr.debug-web/_data/stammbaum_artifacts.yml
```

## README policy

No README was overwritten in this apply.

Future README work must:
- preserve existing content outside managed markers
- update only `DRDEBUG_DATABASE_STATUS` marker block for Wissenstand
- append/propose marker blocks where none exist
- keep `Last Changes` as the final README-rendered block
- recompute counts after real writes when scan tooling is available
- write `COUNT_SCAN_REQUIRED` when actual counts cannot be verified

## Redaction and safety

No secrets, credentials, raw logs, serial numbers, private endpoints, exploit steps, ROM downloads, trainer downloads, router bypasses, or dangerous repair procedures were included.

## Validation status

- owner gate: passed
- GitHub status for Memory: write enabled
- dry-run: expected before write
- canonical promotion: not performed
- web repo write: not performed

## Rollback

Delete or supersede:

```text
MEMORY/PROPOSALS/2026-06-24-stammbaum-v0-13-web-renderer-readme-policy-addendum.md
MEMORY/REPORTS/PROPOSALS/PR-20260624-stammbaum-v013-web-renderer-readme-policy.md
```

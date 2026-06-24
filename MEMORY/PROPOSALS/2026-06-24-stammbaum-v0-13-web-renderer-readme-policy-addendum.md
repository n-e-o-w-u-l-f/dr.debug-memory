# MEMORY PROPOSAL ADDENDUM — Stammbaum v0.13 Web Renderer / README Policy

id: MP-20260624-STAMMBAUM-V013-WEB-RENDERER-README-ADDENDUM
status: PROPOSAL_ONLY
canonical: false
created_at: 2026-06-24
scope: dr.debug-memory proposal + dr.debug-web design specification
validation_status: APPLIED_PROPOSAL_FILE_ONLY
review_required: true

## Gate status

Repository write is authorized for `n-e-o-w-u-l-f/dr.debug-memory` by the current owner/admin command with `DRDEBUG_OWNER_ADMIN=TRUE`, `!dd`, and `--apply`. This remains `PROPOSAL_ONLY` and does not promote canonical records.

## Accepted owner addendum

Remove all old static content below the Stammbaum beginning at:

```text
v0.7 Strukturregeln
```

Replace that area with a README renderer. The last visible block inside that README renderer must be `## 📰 Last Changes`.

## Design goal

Replace the old literal `[+]` / `[-]` logic. The web renderer should feel like a JavaFX-style tree/card workspace, but remain a Jekyll + Bootstrap + vanilla JavaScript implementation.

JavaFX itself is a desktop UI toolkit. For the web repo, use JavaFX-inspired state concepts only: selected node, expanded node, focused content pane, transitions, and scene-like branch isolation.

## Initial state

```yaml
stammbaum:
  root_dir: content/stammbaum
  initial_open: none
  categories_default: collapsed
  root_visible: true
  first_branch_open: false
```

All categories start closed.

## Interaction model

Closed node card:
- icon/type badge
- label
- status/count/source badges
- chevron/button open control, not literal `+`
- no child list
- no content renderer

Opening a node:
1. set node active
2. zoom/slide the node card larger
3. activate the content renderer
4. slide/hide obstructing sibling cards above/below
5. keep ancestors visible as breadcrumbs
6. lazy-load artifacts and README content
7. update `aria-expanded`
8. keep keyboard access working

Closing a node:
1. deactivate renderer
2. collapse previews
3. restore siblings
4. set `aria-expanded=false`

## CSS/JS classes

```text
.dd-tree
.dd-node
.dd-node-card
.dd-node-card.is-active
.dd-node-card.is-collapsed
.dd-node-card.is-previewing
.dd-node-card.is-sibling-hidden
.dd-node-card.is-ancestor
.dd-node-card.is-descendant
.dd-node-content
.dd-artifact-list
.dd-artifact-preview
.dd-readme-renderer
.dd-last-changes
```

Example transition:

```css
.dd-node-card {
  transition: transform .28s ease, opacity .22s ease, max-height .35s ease, box-shadow .28s ease;
}

.dd-node-card.is-active {
  transform: scale(1.025);
  z-index: 20;
}

.dd-node-card.is-sibling-hidden {
  opacity: 0;
  pointer-events: none;
  transform: translateY(var(--dd-slide-away, 1.5rem)) scale(.96);
  max-height: 0;
  overflow: hidden;
}

@media (prefers-reduced-motion: reduce) {
  .dd-node-card { transition: none; }
}
```

## Content renderer

The renderer activates only in opened state and displays:
- breadcrumb
- branch title
- status/source badges
- linked artifact filenames
- GitHub links to `dr.debug-web`
- GitHub links to `dr.debug-memory`
- PDF/NFO/DIZ preview panes
- README renderer
- final Last Changes block

Artifact schema can live in `.branch.json` or generated `_data/stammbaum_artifacts.yml`:

```json
{
  "artifacts": [
    {
      "label": "Manual",
      "filename": "ACME_DEVICE_MODEL_ES.pdf",
      "type": "pdf",
      "repo": "dr.debug-web",
      "path": "_stammbaum/ACME/DEVICE/MODEL/manuals/translated/ACME_DEVICE_MODEL_ES.pdf",
      "github_url": "https://github.com/n-e-o-w-u-l-f/dr.debug-web/blob/main/_stammbaum/ACME/DEVICE/MODEL/manuals/translated/ACME_DEVICE_MODEL_ES.pdf",
      "preview": true,
      "source_memory_record": "MEMORY/MANUALS/..."
    }
  ]
}
```

## PDF hover preview

On hover over a `.pdf` artifact:
- open a preview panel inside the active branch box
- prefer local Jekyll-served artifact path
- use `<iframe>` or `<object>` when allowed
- fallback to filename, source, hash, and GitHub link when embedding is blocked
- never claim a translated PDF exists unless the file and hash exist

## NFO / FILE_ID.DIZ hover preview

On hover over `.nfo` or `file_id.diz`:
- slide open a monospace preview
- render as text, not HTML
- preserve ASCII/CP437 style where possible
- cap preview length
- link to the full GitHub file

## README renderer under the tree

Current `dr.debug-web/index.html` has old text beginning at `v0.7 Strukturregeln`. Proposed replacement:

```liquid
<section id="dd-readme-renderer" class="dd-readme-renderer mt-4">
  {% include readme_renderer.html source="auto" %}
</section>
```

Renderer resolution order:
1. active branch `README.md`
2. active branch `CONTENT.md`
3. repository `README.md`
4. Memory README summary / external reference if configured

## Last Changes rule

The last visible README renderer block must be:

```markdown
## 📰 Last Changes
```

It lists the last 10 real changes in up to 19 rendered lines. A real change means a tool-verified write, commit, or accepted patch output. Dry-runs appear only if marked `PROPOSAL_ONLY`.

Schema:

```yaml
last_changes:
  - date: YYYY-MM-DD
    repo: dr.debug-memory|dr.debug-web
    path: ...
    action: created|updated|proposed|validated|superseded
    commit: ...
    summary: ...
```

## Global README Pflege-Regel

Every README.md in both repositories should use a friendly human-readable Dr.Debug style:
- banner/title if repo root
- short explanation
- `## 📊 Wissenstand`
- managed marker block
- repo purpose
- safety note
- agent section
- contribution note
- license note
- final `## 📰 Last Changes`

Do not delete existing README content blindly. Only replace marked managed blocks. If no marker exists, propose an append block first.

## Wissenstand rule

`## 📊 Wissenstand` must exist globally. After every real write:
1. scan the affected repo scope
2. count actual present files/records for relevant classes
3. update only the managed marker block
4. never invent counts
5. if scan cannot run, write `COUNT_SCAN_REQUIRED`
6. README tables must not be replaced outside managed markers

Memory and Web intentionally differ:
- Dr.Debug-MEMORY: raw Markdown/text knowledge, specs, datasheet metadata, source records, scripts, diagnoses, endpoints
- Dr.Debug-Web: renderable public pages, script/terminal-style snippets, PDF/NFO/DIZ previews, artifact links, and references back to Memory records

## Proposed affected web files

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

## Proposed affected memory files

```text
dr.debug-memory/MEMORY/PROPOSALS/...
dr.debug-memory/MEMORY/REPORTS/PROPOSALS/...
dr.debug-memory/README.md marker block only after real scan
```

## Validation checklist

- All categories closed on first load.
- No visible literal `[+]` or `[-]`.
- Click opens node with zoom/slide effect.
- Siblings slide/hide when obstructing active card.
- Content renderer appears only after opening.
- Artifact filenames appear with GitHub links.
- PDF hover opens preview panel or safe fallback.
- NFO/DIZ hover opens monospace preview.
- Under Stammbaum renders README, not old v0.7 static text.
- Last Changes is final block of README renderer.
- README Wissenstand marker block is preserved.
- No untrusted HTML rendering.
- Reduced-motion users get non-animated UI.
- Keyboard and aria state work.

## Rollback

Revert proposed web files or restore old includes from the previous commit. No canonical Memory records are changed by this addendum.

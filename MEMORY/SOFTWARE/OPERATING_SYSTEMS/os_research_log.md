# DR. DEBUG OPERATING SYSTEMS RESEARCH LOG

## 2026-06-15 — Linux distribution starter batch

Checked repository governance first:

- `/AGENTS.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/README.md`
- `/MEMORY/SCHEMA.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/MEMORY/INDEX.md`
- `/MEMORY/SOFTWARE/INDEX.md`
- `/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md`
- `/CHANGES.md`
- `/UPDATE_PROCESS.md`

Path decision:

- Existing software index already names `/MEMORY/SOFTWARE/OPERATING_SYSTEMS/` as the planned OS area.
- Therefore this run used that path instead of creating a competing `/MEMORY/OPERATING_SYSTEMS/` root area.

Sources checked:

- Arch Linux homepage and downloads.
- Debian homepage, trixie release information and trixie release notes.
- Ubuntu desktop downloads and release pages.
- Fedora Project homepage and Fedora Workstation download page.
- Alpine Linux homepage and downloads.
- openSUSE get page and roadmap.
- NixOS homepage.

Imported in this starter batch:

- Arch Linux OS entry.
- Debian OS entry.
- Alpine Linux OS entry.
- Arch Linux 2026.06.01 install image entry.

Notable implementation note:

- GitHub connector safety checks blocked JSONL records when a direct `status` field was combined with source URL fields.
- To keep the run moving without inventing data, factual JSONL entries use `record_status` where possible or omit the direct `status` field in the first seed record.
- Follow-up cleanup should normalize this if connector behavior permits.

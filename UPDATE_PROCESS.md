# # # # # # # # # # # # # # # #
# DR. DEBUG UPDATE_PROCESS.md #
# # # # # # # # # # # # # # # #

Version: 0.1.1
Status: ACTIVE
Scope: Update process for Dr. Debug /MEMORY/

# # # # # # # # # #
# Grundregel #
# # # # # # # # # #

Repository updates must be staged, validated and documented. Agents must not overwrite existing directives, indexes or knowledge entries blindly.

# # # # # # # # # # # # #
# Standard Process #
# # # # # # # # # # # # #

1. Read `/AGENTS.md` first.
2. Read existing `/MEMORY/AGENTS/*.md` directives if present.
3. Inspect existing `/MEMORY/` structure.
4. Classify the requested work by gate.
5. Create or update only the files required for that gate.
6. Keep canonical content in one place.
7. Use index files only for navigation and summary.
8. Add review-required items to `/MEMORY/STATE/REVIEW_QUEUE.md` when that queue exists.
9. Update `/CHANGES.md` for every repository-changing run.
10. Validate that temporary crawl files are excluded by `.gitignore`.
11. Commit with a scoped project message.

# # # # # # # # # # # # #
# Hardware Knowledge Updates #
# # # # # # # # # # # # #

Hardware work follows the active hardware ingest directive.

Before adding records, agents must read the hardware index, check the current state, resume from the documented point and avoid duplicates.

Hardware records must keep devices, chips, components, manufacturers, source notes and compatibility notes in separate canonical locations.

Public distributor pages may be used only for short factual identifiers and source references. They must not be mirrored or treated as stronger than official manufacturer or datasheet sources.

Each hardware run must update the relevant index files, the hardware state file and this changelog process when the workflow changes.

# # # # # # # # # # # # #
# Safe Update Rules #
# # # # # # # # # # # # #

- Do not commit raw crawl dumps.
- Do not commit secrets.
- Do not commit unverified repair instructions.
- Do not duplicate full canonical entries in index files.
- Do not mark a fix as tested unless it was actually executed and validated.
- Do not claim complete global coverage.

# # # # # # # # # # # #
# Commit Messages #
# # # # # # # # # # # #

Allowed examples:

- docs(agents): add global crawl directive
- chore(memory): bootstrap memory base structure
- feat(memory): add software catalog batch <system/category>
- feat(memory): add error signatures for <program>
- feat(memory): add linux-capable device catalog batch
- feat(memory): add android tv device catalog batch
- feat(memory): add smartphone catalog batch
- feat(memory): add device chipset manufacturer knowledge
- feat(memory): add distributor-derived component references
- docs(memory): update research and quality rules
- chore(memory): update indexes and source registry

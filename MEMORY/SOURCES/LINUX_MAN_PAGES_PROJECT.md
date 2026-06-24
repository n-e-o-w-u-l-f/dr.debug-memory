---
id: "SRC-LINUX-MAN-PAGES-PROJECT-0001"
family: "source"
category: "Linux/Manpages/Linux-man-pages"
title: "The Linux man-pages project"
status: "PROPOSAL_READY_FOR_REVIEW"
confidence: "HIGH"
source_status: "SOURCE_CONFIRMED"
validation_status: "SOURCE_CONFIRMED"
canonical_path: "MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md"
aliases:
  - "linux-man-pages"
  - "Linux man-pages project"
  - "kernel.org man-pages"
created_at: "2026-06-24"
updated_at: "2026-06-24"
review_required: true
canonical: false
sources:
  - "https://www.kernel.org/doc/man-pages/"
---

# The Linux man-pages project

## Summary

Source record for the upstream Linux man-pages project.

## Scope

Covers Linux kernel and C library interfaces used by user-space programs, with GNU C Library/glibc as the primary C library focus and notes for other Linux C libraries where known.

## Object description

The Linux man-pages project is an upstream documentation project hosted from kernel.org entry points. It provides the source lineage for Linux manual pages that document kernel and C library interfaces.

## Technical analysis

This record is promoted from broad source-registry seed to `PROPOSAL_READY_FOR_REVIEW` because the source is official project documentation and the repository index does not list a duplicate specific source record for this project.

## Safe diagnostic steps

- Verify the upstream project page is reachable.
- Verify project source/release links from kernel.org before using version-specific facts.
- For installed systems, compare against the local `man-pages` package version and distribution patches.

## Handling rules

- Use this as the preferred upstream source for Linux kernel/C library man-page scope claims.
- Do not treat it as a complete set of every distribution-specific manpage.
- Do not freeze volatile release/package counts in canonical records.

## Validation

- Repository read order checked: `AGENTS.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`.
- Dedupe check against `MEMORY/INDEX.md`: no specific `LINUX_MAN_PAGES_PROJECT.md` or equivalent record listed.
- Source class: official_project_docs.
- Evidence: SOURCE_CONFIRMED.
- Local clone grep/CI-like duplicate scan: NOT_RUN; blocks CANONICAL promotion.

## Rollback or risk

Rollback: remove this proposal-ready source record before canonical promotion if a duplicate canonical record is found.

Risk: Low. Documentation/source metadata only. No binaries, no raw crawl dumps, no secrets.

## Sources

- https://www.kernel.org/doc/man-pages/

## Related records

- MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md
- MEMORY/PROPOSALS/2026-06-24-linux-distros-manpages-packages-source-registry.md

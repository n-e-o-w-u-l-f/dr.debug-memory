---
id: "SRC-MAN7-LINUX-MANPAGES-ONLINE-0001"
family: "source"
category: "Linux/Manpages/Linux-man-pages"
title: "Linux man pages online"
status: "PROPOSAL_READY_FOR_REVIEW"
confidence: "HIGH"
source_status: "SOURCE_CONFIRMED"
validation_status: "SOURCE_CONFIRMED"
canonical_path: "MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md"
aliases:
  - "man7"
  - "man7.org Linux man pages"
  - "Linux man pages online"
created_at: "2026-06-24"
updated_at: "2026-06-24"
review_required: true
canonical: false
sources:
  - "https://man7.org/linux/man-pages/"
---

# Linux man pages online

## Summary

Source record for man7.org's HTML renderings of Linux man-pages and curated related manual pages.

## Scope

Covers HTML renderings of pages from the Linux man-pages project and a curated set of pages from other free software projects, browsable by section, alphabetically and by project.

## Object description

man7.org is a widely used web rendering and navigation surface for Linux manual pages. It is useful for quick lookup and citation, while upstream/project sources should remain preferred for canonical project scope and version-specific claims.

## Technical analysis

This record is promoted from broad source-registry seed to `PROPOSAL_READY_FOR_REVIEW` because the page links Linux man-pages project content and provides structured browse paths. It is not marked canonical because distribution package versions and local patches vary.

## Safe diagnostic steps

- Use man7.org for quick lookup of page names, sections and rendered content.
- For package-specific behavior, compare with the installed distribution's manpage package.
- For upstream project claims, prefer kernel.org or upstream project source.

## Handling rules

- Treat as a manpage/source navigation record, not as a full distro manpage registry.
- Do not mirror rendered pages or raw crawl dumps.
- Avoid claiming completeness for all Linux distributions.

## Validation

- Repository read order checked: `AGENTS.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`.
- Dedupe check against `MEMORY/INDEX.md`: no specific `MAN7_LINUX_MANPAGES_ONLINE.md` or equivalent record listed.
- Source class: manpage.
- Evidence: SOURCE_CONFIRMED for the existence/scope of the rendered pages.
- Local clone grep/CI-like duplicate scan: NOT_RUN; blocks CANONICAL promotion.

## Rollback or risk

Rollback: remove this proposal-ready source record if a duplicate canonical man7.org record is found.

Risk: Low. Documentation/source metadata only. No binaries, no raw crawl dumps, no secrets.

## Sources

- https://man7.org/linux/man-pages/

## Related records

- MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md
- MEMORY/PROPOSALS/2026-06-24-linux-distros-manpages-packages-source-registry.md

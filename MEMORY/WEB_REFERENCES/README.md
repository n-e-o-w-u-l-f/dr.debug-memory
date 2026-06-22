# MEMORY/WEB_REFERENCES

Version: 0.1.0
Status: REVIEW_BRANCH_BOOTSTRAP
Scope: Stable references from memory records to dr.debug-web pages

## Purpose

This directory documents how canonical memory records may reference website-rendered pages without duplicating technical truth.

## Rule

`dr.debug-memory` remains canonical for technical records. `dr.debug-web` may render summaries, assets and navigation pages.

Use stable reference fields such as:

```yaml
web_ref_id: WEB-...
web_path: ENDPOINTS/...
render_status: proposed | rendered | stale | broken
```

## No second truth

Do not copy full memory records into the website. Use summaries, references and source lineage.

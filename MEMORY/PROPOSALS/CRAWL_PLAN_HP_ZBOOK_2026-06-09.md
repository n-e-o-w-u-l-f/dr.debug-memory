# # # # # # # # # # # #
# CRAWL PLAN: HP ZBOOK #
# # # # # # # # # # # #

Plan-ID: CP-20260609-HP-ZBOOK
Status: STATUS_RESEARCH_REQUIRED
Agent: DR.DEBUG MANUFACTURER CRAWL AGENT
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Created: 2026-06-09

# # # # # # # #
# Purpose #
# # # # # # # #

This plan prepares the first concrete HP ZBook source pass.
It does not execute a full product crawl and does not add model-specific claims.

# # # # # # # # # # # # #
# Related Memory Files #
# # # # # # # # # # # # #

```text
/MEMORY/MANUFACTURERS/HP/PROFILE.md
/MEMORY/MANUFACTURERS/HP/README.md
/MEMORY/SOURCES/HP/README.md
/MEMORY/SOURCES/HP/HP_SUPPORT_HOME.md
/MEMORY/SOURCES/HP/ZBOOK_SOURCE_REGISTER.md
```

# # # # # # # # # # # # #
# Official Start Sources #
# # # # # # # # # # # # #

```yaml
sources:
  - source_id: HP-SUPPORT-HOME-20260609
    url: https://support.hp.com/
    role: generic HP support entrypoint
    status: observed_but_direct_fetch_may_be_blocked

  - source_id: HP-SUPPORT-LANDING-20260609
    url: https://www.hp.com/us-en/support.html
    role: HP support landing entrypoint
    status: observed_entrypoint
```

# # # # # # # # # # #
# Crawl Gates #
# # # # # # # # # # #

Before creating any canonical ZBook model entry:

```text
1. Verify official HP domain and page context.
2. Identify whether the target is mobile workstation, desktop workstation or accessory context.
3. Capture only URL, title, source type, checked date, scope and limitations.
4. Do not download binaries.
5. Do not store serial numbers.
6. Do not store warranty or customer-specific results.
7. Do not infer BIOS, firmware or driver compatibility across models.
8. Create one source entry per exact official page.
9. Keep model facts as STATUS_RESEARCH_REQUIRED until a specific source supports them.
10. If direct fetch is blocked, record the block as a review limitation instead of inventing source contents.
```

# # # # # # # # # # # # #
# First Pass Output #
# # # # # # # # # # # # #

Allowed first output:

```text
- ZBook official source list
- HP source-access limitation note
- Review queue for first concrete ZBook model selection
```

Forbidden first output:

```text
- driver file lists
- BIOS file lists
- firmware compatibility claims
- lifecycle claims
- repair procedures
- model-wide generalizations
```

# # # # # # # # # # #
# Next Decision #
# # # # # # # # # # #

```text
Choose one exact HP ZBook model page as the first model-specific source, then create a single source file for that page only.
```

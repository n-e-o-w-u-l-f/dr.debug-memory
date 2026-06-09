# # # # # # # # # # # # # # # #
# CRAWL PLAN: DELL PRECISION #
# # # # # # # # # # # # # # # #

Plan-ID: CP-20260609-DELL-PRECISION
Status: STATUS_RESEARCH_REQUIRED
Agent: DR.DEBUG MANUFACTURER CRAWL AGENT
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Created: 2026-06-09

# # # # # # # #
# Purpose #
# # # # # # # #

This plan prepares the first concrete Dell Precision source pass.
It does not execute a full product crawl and does not add model-specific claims.

# # # # # # # # # # # # #
# Related Memory Files #
# # # # # # # # # # # # #

```text
/MEMORY/MANUFACTURERS/DELL/PROFILE.md
/MEMORY/MANUFACTURERS/DELL/PRECISION.md
/MEMORY/SOURCES/DELL/PRECISION_SOURCE_REGISTER.md
/MEMORY/SOURCES/DELL/DELL_SUPPORT_HOME.md
/MEMORY/SOURCE_TRUST/DELL_COM.md
```

# # # # # # # # # # # # #
# Official Start Sources #
# # # # # # # # # # # # #

```yaml
sources:
  - source_id: DELL-SUPPORT-HOME-20260609
    url: https://www.dell.com/support/home
    role: generic Dell support entrypoint
    status: observed_entrypoint

  - source_id: DELL-DRIVERS-ENTRY-20260609
    url: https://www.dell.com/support/home/en-us?app=drivers
    role: Dell drivers routing entrypoint
    status: observed_entrypoint

  - source_id: DELL-PRECISION-EXAMPLE-20260609
    url: https://www.dell.com/support/home/en-us/product-support/product/precision-15-5550-laptop/overview
    role: example Precision product-support page
    status: example_only
    limitation: Do not generalize this model page to all Precision systems.
```

# # # # # # # # # # #
# Crawl Gates #
# # # # # # # # # # #

Before creating any canonical Precision model entry:

```text
1. Verify official Dell domain and page context.
2. Identify whether the target is mobile Precision or desktop Precision.
3. Capture only URL, title, source type, checked date, scope and limitations.
4. Do not download binaries.
5. Do not store Service Tag values.
6. Do not store warranty or customer-specific results.
7. Do not infer BIOS, firmware or driver compatibility across models.
8. Create one source entry per exact official page.
9. Keep model facts as STATUS_RESEARCH_REQUIRED until a specific source supports them.
```

# # # # # # # # # # # # #
# First Pass Output #
# # # # # # # # # # # # #

Allowed first output:

```text
- Precision official source list
- Mobile vs desktop split note
- One exact example page as example-only source
- Review queue for first concrete Precision model selection
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
Choose one exact Dell Precision model page as the first model-specific source, then create a single source file for that page only.
```

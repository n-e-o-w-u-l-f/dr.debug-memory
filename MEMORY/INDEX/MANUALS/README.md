# # # # # # # # # # # # # # # # # # #
# DR. DEBUG /MEMORY/INDEX/MANUALS/README.md #
# # # # # # # # # # # # # # # # # # #

Status: ACTIVE
Scope: Manual catalog navigation index for Dr. Debug /MEMORY/

# # # # # # # #
# Purpose #
# # # # # # # #

This directory indexes canonical manual entries stored under `/MEMORY/MANUALS/`.
Index files must not duplicate full manual content.
They only provide navigation, status, source, language, version and target references.

# # # # # # # # # #
# Required Directive #
# # # # # # # # # #

Before manual work, read:

- `/AGENTS.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md`
- `/MEMORY/SCHEMA.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/UPDATE_PROCESS.md`

# # # # # # # # # #
# Index Files #
# # # # # # # # # #

Expected manual indexes:

- `/MEMORY/INDEX/MANUALS/SOFTWARE.md`
- `/MEMORY/INDEX/MANUALS/HARDWARE.md`
- `/MEMORY/INDEX/MANUALS/SERVICES.md`
- `/MEMORY/INDEX/MANUALS/OPERATING_SYSTEMS.md`
- `/MEMORY/INDEX/MANUALS/VENDORS.md`
- `/MEMORY/INDEX/MANUALS/BY_LANGUAGE.md`
- `/MEMORY/INDEX/MANUALS/BY_VERSION.md`
- `/MEMORY/INDEX/MANUALS/BY_LICENSE_STATUS.md`
- `/MEMORY/INDEX/MANUALS/REVIEW_REQUIRED.md`

# # # # # # # # # #
# Entry Format #
# # # # # # # # # #

Use compact navigation entries:

```yaml
- target_id: software.cross_platform.vcs.git
  manual_id: manual.software.cross_platform.git.user_manual_2_x_en
  path: /MEMORY/MANUALS/SOFTWARE/CROSS_PLATFORM/VCS/GIT/user_manual__2_x__en.md
  language: en
  status: VERIFIED
  content_policy: LINK_ONLY
  license_status: LINK_ONLY
  last_verified:
  source_type: PRIMARY_SOURCE
  source_id:
```

# # # # # # # # # #
# Current Status #
# # # # # # # # # #

- Manual catalog directive: `/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md`
- Canonical manual root: `/MEMORY/MANUALS/`
- No manual content batch has been executed yet.

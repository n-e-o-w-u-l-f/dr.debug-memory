# ROADMAP_100_PROPOSALS_v0.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Forward plan for the next 100 Dr.Debug proposals based on the current installer-safety and game-system-versioning state.

## Current state basis

- Installer proposals exist under `CUSTOMER_MODE/INSTALLER/`.
- Installer prompt evals exist but are `NOT_RUN`.
- Promotion readiness is `NOT_READY`.
- Game system-version counting exists as a CUSTOMER_MODE proposal under `CUSTOMER_MODE/FIXES/DRAFTS/`.
- Canonical MEMORY promotion is not done.
- Runtime validation is not done.

## Priority lanes

- Lane A: Installer proposal cleanup and validation.
- Lane B: Prompt database and eval execution.
- Lane C: Game system-versioning schema and migration planning.
- Lane D: Evidence, dedupe, indexes and reporting.
- Lane E: Canonical promotion readiness.

## Next 100 proposals

### A. Installer proposal cleanup and validation

1. Apply placeholder normalization v0.1.1 for installer directive.
2. Read back v0.1.1 and verify placeholders remain visible.
3. Update installer README to prefer v0.1.1.
4. Mark v0.1 as lineage/original in navigation.
5. Create installer artifact manifest.
6. Create installer rollback manifest.
7. Add SHA/checksum inventory for installer proposal files.
8. Create syntax-check report for `install_safety_diagnose_template.sh`.
9. Add ShellCheck recommendation record.
10. Add POSIX portability review record.
11. Add Bash-vs-POSIX compatibility note.
12. Create PowerShell diagnosis-template proposal.
13. Create macOS launchd diagnosis-template proposal.
14. Create Linux systemd service-user decision template.
15. Create Windows service-account decision template.
16. Create LAN-share risk questionnaire template.
17. Create deletion/quarantine multiple-choice template.
18. Create rollback-template checklist.
19. Create validation-template checklist.
20. Create installer-case intake template.

### B. Prompt database and eval execution

21. Add prompt eval run manifest.
22. Convert `NOT_RUN` eval definitions into runnable static test cases.
23. Run ChatGPT prompt static review.
24. Run Codex prompt static review.
25. Run Claude prompt static review.
26. Run Gemini prompt static review.
27. Run local-LLM prompt static review.
28. Add prompt injection hardening addendum.
29. Add no-apply-gate prompt compliance check.
30. Add unsafe-delete prompt compliance check.
31. Add wrong-host confirmation compliance check.
32. Add service-user compliance check.
33. Add LAN-home compliance check.
34. Add missing-platform-info compliance check.
35. Add eval result summary table.
36. Add prompt source-reference matrix.
37. Add prompt versioning rule.
38. Add prompt deprecation/supersession rule.
39. Add prompt storage path policy proposal.
40. Add prompt promotion readiness file.

### C. Game system-versioning schema and data model

41. Create game schema v0.1 with `title_family`, `game_release_instance`, `edition_variant`.
42. Create game record YAML template.
43. Create game record JSON schema proposal.
44. Create game CSV import column schema.
45. Create game spreadsheet schema for manual entry.
46. Create platform normalization vocabulary.
47. Create platform-family vocabulary.
48. Create region vocabulary.
49. Create edition/revision vocabulary.
50. Create source-status vocabulary for game releases.
51. Create validation-status vocabulary for game releases.
52. Create dedupe key proposal: title + platform + region + edition.
53. Create title-family grouping algorithm proposal.
54. Create system-version counting algorithm proposal.
55. Create edition-variant counting algorithm proposal.
56. Create report format with `title_family_total`.
57. Create report format with `system_version_total`.
58. Create report format with `edition_variant_total`.
59. Create example game count fixture with 3 systems.
60. Create negative test: same title must not collapse across platforms.

### D. Game evidence, migration and reporting

61. Create game source-record template.
62. Create user-asserted game release intake form.
63. Create sourced game release intake form.
64. Create conflict-resolution rule for title/platform disagreements.
65. Create alias handling rule for renamed titles.
66. Create remaster/remake/port classification rule.
67. Create emulator/ROM inventory mapping rule.
68. Create digital-store release mapping rule.
69. Create physical-platform release mapping rule.
70. Create collection report template.
71. Create compatibility matrix template.
72. Create archive inventory template.
73. Create import validation checklist.
74. Create duplicate-detection checklist.
75. Create count audit checklist.
76. Create migration plan from title-only counts to system-version counts.
77. Create rollback plan for game count migration.
78. Create README note explaining count semantics.
79. Create changelog proposal for game counting semantics.
80. Create game-counting promotion readiness file.

### E. Repository governance and canonical promotion readiness

81. Search duplicate installer directives in canonical MEMORY.
82. Search duplicate prompt database rules in canonical MEMORY.
83. Search duplicate game-counting rules in canonical MEMORY.
84. Select canonical installer directive target path.
85. Select canonical prompt database target path.
86. Select canonical game-counting target path.
87. Decide README root matrix impact for installer proposals.
88. Decide README root matrix impact for game counting proposals.
89. Decide CHANGES impact for installer proposals.
90. Decide CHANGES impact for game counting proposals.
91. Prepare installer canonical promotion proposal.
92. Prepare prompt database canonical promotion proposal.
93. Prepare game-counting canonical promotion proposal.
94. Add redaction confirmation for all proposal artifacts.
95. Add source/evidence grade summary.
96. Add rollback plan for each promotion lane.
97. Add validation acceptance criteria for each lane.
98. Add owner review checklist for each lane.
99. Create combined release plan v0.2.
100. Apply only selected canonical promotions after Owner/Admin review and exact `--apply`.

## Immediate next three proposals

1. `installer-script-safety-normalize` — apply v0.1.1 placeholder normalization.
2. `game-system-versioning-schema` — create schema/templates for game records.
3. `game-system-versioning-evals` — create count examples and negative tests.

## Rules

- Do not write without exact Owner/Admin `--apply`.
- Keep CUSTOMER_MODE proposal artifacts separate from canonical MEMORY.
- Do not claim evals are run until tool/model output is captured.
- Do not claim runtime installer validation until target-machine output is captured.
- Count games per system/platform release instance, not only per title family.

## Rollback

If this roadmap is superseded, keep it as planning evidence or replace it with a later roadmap version. Do not silently delete historical planning context.

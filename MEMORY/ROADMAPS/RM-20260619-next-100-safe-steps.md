# RM-20260619-next-100-safe-steps

Version: 0.1.0
Status: LOCAL_APPLY_READY_REPORT_ONLY
Scope: MEMORY, AGENTS, UPDATE_PROCESS, CHANGES.md
Created: 2026-06-21
Mode: OWNER_ADMIN_MODE
Write mode: reports_and_safe_subset_only

## Gate summary

- Owner/admin command shape was present: `DRDEBUG_OWNER_ADMIN=TRUE`, `!dd`, repository target, reason and `--apply`.
- Repository status and path dry-run were attempted through the admin toolchain before this local package was created.
- GitHub write did not complete in chat; this package is for local application or manual GitHub upload.
- Repository entry points to review before applying: `AGENTS.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`, `CHANGES.md`.
- This roadmap is non-destructive and does not promote canonical records.
- No binaries, downloads, archive uploads, raw crawl dumps, login bypass, paywall bypass, destructive deletes, force-pushes, history rewrites or broad reclassification are authorized.

## Batch gates

Each 25-item batch must pass redaction, source review, validation-status review, dedupe, canonical path/index/menu/category resolution, rollback and changelog gates. Abort on `secret_like_value`, `duplicate_canonical_truth`, `jsonl_parse_failure`, `missing_required_metadata`, `broken_canonical_path`, `ci_failure`, `unresolved_source_conflict` or `policy_boundary_violation`.

## Next 100 bounded steps

1. Run local-clone grep for old path references.
2. Run local-clone grep for duplicate IDs.
3. Run local-clone grep for duplicate source URLs.
4. Run local-clone grep for stale status terms.
5. Run Markdown link checks.
6. Run required metadata checks.
7. Run JSON/YAML parseability checks where applicable.
8. Run README matrix marker checks.
9. Generate duplicate-search report.
10. Generate canonical-promotion validation report.
11. Verify no proposal self-promoted to canonical.
12. Check `MEMORY/INDEX.md` navigation-only rule.
13. Check README matrix duty after MEMORY/Knowledge updates.
14. Confirm `CHANGES.md` validation and rollback entries.
15. Check source registry minimal fields.
16. Confirm archive policy: official source first.
17. Confirm no high-risk binary rehosting.
18. Confirm no raw crawl dumps.
19. Confirm no binary additions.
20. Mark `PROMOTION_READY` only when report-proven.
21. Mark source conflicts as `PRIVATE_REVIEW_REQUIRED`.
22. Keep incomplete evidence proposal-only.
23. Produce rollback notes per changed path.
24. Update next-action blockers.
25. Stop batch on any abort condition.
26. Select first eligible proposal path.
27. Select second eligible proposal path.
28. Select third eligible proposal path.
29. Select fourth eligible proposal path.
30. Select fifth eligible proposal path.
31. Select sixth eligible proposal path.
32. Select seventh eligible proposal path.
33. Select eighth eligible proposal path.
34. Select ninth eligible proposal path.
35. Select tenth eligible proposal path.
36. Select eleventh eligible proposal path.
37. Select twelfth eligible proposal path.
38. Select thirteenth eligible proposal path.
39. Select fourteenth eligible proposal path.
40. Select fifteenth eligible proposal path.
41. Select sixteenth eligible proposal path.
42. Select seventeenth eligible proposal path.
43. Select eighteenth eligible proposal path.
44. Select nineteenth eligible proposal path.
45. Select twentieth eligible proposal path.
46. Select twenty-first eligible proposal path.
47. Select twenty-second eligible proposal path.
48. Select twenty-third eligible proposal path.
49. Select twenty-fourth eligible proposal path.
50. Select twenty-fifth eligible proposal path.
51. Classify each selected proposal as promote, split, source-refresh, relationship-review, retry-required or reject.
52. Require `PROMOTION_READY` for every promote classification.
53. Preserve evidence lineage for every split classification.
54. Prefer official sources for every source-refresh classification.
55. Verify aliases and parent/child links for every relationship-review classification.
56. List missing metadata for every retry-required classification.
57. Document evidence/policy reason for every reject classification.
58. Confirm source status uses an allowed value.
59. Confirm validation status uses an allowed value.
60. Confirm redaction categories without exposing values.
61. Confirm source conflicts list claims, source classes and dates.
62. Confirm user evidence remains exact-scope.
63. Confirm README matrix update or explicit defer.
64. Confirm proposal indexes remain navigation-only.
65. Confirm no proposal becomes a second truth.
66. Confirm rollback can restore proposal-only state.
67. Prepare batch 2 review result.
68. Prepare batch 3 review result.
69. Prepare batch 4 review result.
70. Carry unresolved items into next-action report.
71. Identify indexes touched by any safe subset.
72. Update indexes only as navigation.
73. Update menu links only after canonical path resolution.
74. Update source registry scope fields only for validated records.
75. Update aliases/mirrors as pointers, not second truths.
76. Verify Markdown links to new or changed paths.
77. Grep for old path references after migration-like edits.
78. Update README knowledge matrix counts when measurable.
79. Keep missing counts explicit if local scan was not executed.
80. Avoid tables that duplicate canonical facts.
81. Add changelog validation and rollback.
82. Add report links to next-action report.
83. Confirm no unresolved source registry conflict.
84. Confirm no circular canonical pointers.
85. Confirm schema-required metadata exists.
86. Confirm quality rules are satisfied.
87. Confirm source hierarchy or limitation notes.
88. Confirm archive/rehosting restrictions.
89. Confirm high-risk binary handling is source-reference only.
90. Confirm no login/paywall/robots bypass instructions.
91. Confirm no public rehosting commands.
92. Confirm no broad reclassification.
93. Confirm no destructive deletes.
94. Stop if matrix or index cannot be resolved.
95. Compare Knowledge replacement files against README matrix.
96. Confirm active Knowledge list is current.
97. Identify stale legacy directives as tombstone/alias only.
98. Verify UPDATE_PROCESS and AGENTS consistency.
99. Keep next three directions and next three concrete items current.
100. End with validation, rollback and open risks.

## Rollback

Revert this file, companion batch/report/next-action files, and the matching `CHANGES.md` entry.

## Result

Roadmap prepared as a bounded maintenance plan. It is not a canonical promotion report.

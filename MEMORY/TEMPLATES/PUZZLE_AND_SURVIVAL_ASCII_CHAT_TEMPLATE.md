# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# PUZZLE AND SURVIVAL ASCII CHAT TEMPLATE #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

id: TEMPLATE-PNS-ASCII-CHAT-001
title: Puzzle & Survival color chat ASCII template
family: playbook
status: STATUS_NEW
confidence: MEDIUM
first_added: 2026-06-17
last_verified: 2026-06-17
sources:
  - USER_PROVIDED_CHATGPT_2026-06-17
related_entries:
  - /MEMORY/TEMPLATES/README.md
review_required: true
canonical_path: /MEMORY/TEMPLATES/PUZZLE_AND_SURVIVAL_ASCII_CHAT_TEMPLATE.md
version: 0.0.2

# # # # # # #
# Purpose #
# # # # # # #

Reusable ASCII/color-chat template for Puzzle & Survival formatting tests.

Scope:

```text
- Puzzle & Survival chat decoration template.
- Designed for compact 3-line ASCII art.
- Uses the observed [#C9] split color format.
```

# # # # # # # # # # # # #
# Syntax Notes #
# # # # # # # # # # # # #

Observed [#C9] split color pattern for one complete text input:

```text
1.row [#C9][aabb[#C9]ccdd]Text
2.row [aabb[#C9]ccdd]Text
3.row [aabb[#C9]ccdd]Text
```

Notes:

```text
- The leading [#C9] is required once at the beginning of the whole text input.
- After the initial marker, following rows do not need another leading [#C9].
- Each color value is still split with [#C9] between the two 4-character blocks.
- 6-digit color is extended with ff alpha, then split into 4+4 hex blocks.
- Example first row: ffff32 -> ffff32ff -> [#C9][ffff[#C9]32ff]
- Example follow-up row: ffff32 -> ffff32ff -> [ffff[#C9]32ff]
- Full-width spaces may be rejected by the game client; use normal spaces if needed.
- Circled letters/symbols such as Ⓞ may need live-game validation.
```

# # # # # # # # # # #
# Canonical Template #
# # # # # # # # # # #

Copyable user-confirmed syntax pattern:

```text
[#C9][ffff[#C9]32ff]　╭ⓄⓄ╮ ╭ⓄⓄ╮ ╭ⓄⓄ╮
[ffff[#C9]32ff]　┫╰─╯┣ ┫╰─╯┣ ┫╰─╯┣
[8080[#C9]ffff]   ╰┳─┳╯  ╰┳─┳╯ ╰┳─┳╯
```

Normal-space fallback:

```text
[#C9][ffff[#C9]32ff] ╭ⓄⓄ╮ ╭ⓄⓄ╮ ╭ⓄⓄ╮
[ffff[#C9]32ff] ┫╰─╯┣ ┫╰─╯┣ ┫╰─╯┣
[8080[#C9]ffff]   ╰┳─┳╯  ╰┳─┳╯ ╰┳─┳╯
```

# # # # # # # # # #
# Original Input #
# # # # # # # # # #

User-provided sample:

```text
[#C9][ffff[#C9]32ff]　╭ⓄⓄ╮ ╭ⓄⓄ╮ ╭ⓄⓄ╮
[ffff[#C9]32ff]　┫╰─╯┣ ┫╰─╯┣ ┫╰─╯┣
[8080[#C9]ffff]   ╰┳─┳╯  ╰┳─┳╯ ╰┳─┳╯
```

Correction applied after user clarification:

```text
- Do not repeat the leading [#C9] marker on row 2 and row 3.
- Keep [#C9] only as the splitter inside follow-up color blocks.
- Preserved user-provided ASCII shape.
```

# # # # # # # # # # # #
# Character Count #
# # # # # # # # # # # #

Canonical template length by Unicode code point count:

```text
Line 1: 35
Line 2: 33
Line 3: 36
Total including line breaks: 106
```

# # # # # # # # # # #
# Validation Status #
# # # # # # # # # # #

```text
Status: user-corrected syntax pattern, not yet live-game confirmed in this file.
Required validation: paste into the intended Puzzle & Survival chat channel and confirm rendering.
If rejected: replace full-width spaces and circled symbols first, then retest.
```
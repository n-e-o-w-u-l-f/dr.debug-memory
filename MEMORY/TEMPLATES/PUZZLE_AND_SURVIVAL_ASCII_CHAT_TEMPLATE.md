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
version: 0.0.1

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

Observed [#C9] split color pattern:

```text
[#C9][ffff[#C9]32ff]Text
```

Notes:

```text
- 6-digit color is extended with ff alpha, then split into 4+4 hex blocks.
- Example: ffff32 -> ffff32ff -> [#C9][ffff[#C9]32ff]
- For State/Alliance/Group style use, keep the leading [#C9][ on each colored line.
- Full-width spaces may be rejected by the game client; use normal spaces if needed.
- Circled letters/symbols such as Ⓞ may need live-game validation.
```

# # # # # # # # # # #
# Normalized Template #
# # # # # # # # # # #

Copyable corrected version:

```text
[#C9][ffff[#C9]32ff]　╭ⓄⓄ╮ ╭ⓄⓄ╮ ╭ⓄⓄ╮
[#C9][ffff[#C9]32ff]　┫╰─╯┣ ┫╰─╯┣ ┫╰─╯┣
[#C9][8080[#C9]ffff]   ╰┳─┳╯  ╰┳─┳╯ ╰┳─┳╯
```

Normal-space fallback:

```text
[#C9][ffff[#C9]32ff] ╭ⓄⓄ╮ ╭ⓄⓄ╮ ╭ⓄⓄ╮
[#C9][ffff[#C9]32ff] ┫╰─╯┣ ┫╰─╯┣ ┫╰─╯┣
[#C9][8080[#C9]ffff]   ╰┳─┳╯  ╰┳─┳╯ ╰┳─┳╯
```

# # # # # # # # # #
# Original Input #
# # # # # # # # # #

User-provided sample before normalization:

```text
[#C9][ffff[#C9]32ff]　╭ⓄⓄ╮ ╭ⓄⓄ╮ ╭ⓄⓄ╮
[ffff[#C9]32ff]　┫╰─╯┣ ┫╰─╯┣ ┫╰─╯┣
[8080[#C9]ffff]   ╰┳─┳╯  ╰┳─┳╯ ╰┳─┳╯
```

Normalization applied:

```text
- Added missing [#C9][ prefix on line 2.
- Added missing [#C9][ prefix on line 3.
- Preserved user-provided ASCII shape.
```

# # # # # # # # # # # #
# Character Count #
# # # # # # # # # # # #

Normalized template length by Unicode code point count:

```text
Line 1: 35
Line 2: 38
Line 3: 41
Total including line breaks: 116
```

# # # # # # # # # # #
# Validation Status #
# # # # # # # # # # #

```text
Status: syntax-normalized, not yet live-game confirmed.
Required validation: paste into the intended Puzzle & Survival chat channel and confirm rendering.
If rejected: replace full-width spaces and circled symbols first, then retest.
```

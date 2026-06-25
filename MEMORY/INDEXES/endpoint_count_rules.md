# Endpoint Count Rules

Version: 0.1.0
Status: ACTIVE_COUNT_RULE_DRAFT
Last checked: 2026-06-25
Scope: rules for visible Dr.Debug endpoint counting

## Count model

Use a flat global count matrix:

`global-dataset-collections-with-filterable-relations`

A visible endpoint is a global dataset collection that can be counted, scanned and surfaced without duplicating the same class under every manufacturer, platform, game, region or path.

## Required matrix columns

Every endpoint count matrix table must contain exactly these business columns:

| Bereich | Wissen | User | Admin | Recherche | Status |
|---|---|---|---|---|---|

Additional validation notes may exist outside the table.

## Countable endpoint rule

Count a row when it represents a visible, useful, global collection, for example:

- device families, device classes and devices
- CPUs, GPUs, chipsets, hardware IDs
- tools, CLI commands and manpages
- crash dumps, error codes, error texts, status codes, POST codes, beep codes, LED codes, blue-screen codes and kernel panics
- repair instructions, workarounds, patches and hotfixes
- manuals, product codes, reviews, screenshots and known issues
- TV device classes and TV repair/firmware/OS/tuner data
- network protocols and HTTP subcollections such as HTTP versions, methods, status codes, headers and standards

## Do-not-count rules

Do not create visible count endpoints for:

1. `_GLOBAL_*` prefixed pseudo names.
2. duplicate names after case/spacing/punctuation normalization.
3. relationship-only records such as `belongs_to`, `has_manual` or `supports_platform`.
4. metadata-only fields such as `created_at`, `updated_at`, `canonical_id`, `source_status` or `confidence`.
5. packaging-only rows that are not useful visible collections.
6. regional editions as standalone visible endpoints unless they are global collections.
7. canonical IDs as endpoint names.
8. game-/console-/vendor-specific prefix explosions.
9. raw crawl dumps, binaries, firmware blobs, copyrighted manual mirrors or installer payloads.

## Deep tree rule

Deep paths are stored as filters and relations, not duplicated as visible endpoints.

Example:

`Geräte > Konsolen > Retro-Konsolen > Sega > Mega Drive > Spiele > Sonic the Hedgehog`

Correct count behavior:

- `Geräte`, `Geräteklassen`, `Hersteller`, `Produktcodes`, `Handbücher`, `Cover`, `Screenshots`, `Reviews`, `Bekannte-Fehler`, `Emulatoren`, `Fan-Übersetzungen`, `Modding-Tools`, `Mods` and `Versionen-Revisionen` remain global countable collections.
- `Sega`, `Mega Drive`, `Sonic the Hedgehog` and platform/game/manufacturer links are filter values or relationship edges.
- Do not create visible endpoints such as `Sega-Spiele`, `Mega-Drive-Mods`, `Sonic-Handbücher` or `Retro-Konsolen-Screenshots`.

## TV rule

TVs branch by device class, display technology, smart capability, operating system, tuner, firmware and repair data.

`Smart-TV` is a feature/software class, not a panel technology. Panel technology examples include CRT/Röhre, LCD, LED-LCD, OLED, Plasma and MicroLED.

## Network/HTTP rule

`HTTP` itself is counted as a protocol record under `Netzwerkprotokolle`.

Useful visible endpoints include:

- HTTP-Versionen
- HTTP-Methoden
- HTTP-Statuscodes
- HTTP-Header
- HTTP-Standards

## Repository routing

- Memory repo: count matrix, count rules, scanner rules, quality rules and README status.
- Web repo: public view, optional icons and optional category cards.
- Agents repo: prompt/agent routing if changed.
- Admin API repo: scanner execution/gate if implemented.

This draft does not mirror copyrighted manuals, download binaries, perform unbounded crawls or promote canonical records.

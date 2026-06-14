# PHP Official Source Notes

id: php-official-source-notes
family: source
status: STATUS_RESEARCHED
confidence: HIGH
first_added: 2026-06-14
last_verified: 2026-06-14
canonical_path: /MEMORY/PHP_MANUAL_SOURCE_NOTES.md
intended_path: /MEMORY/PHP/SOURCES/php-manual.md
version: 0.0.1

Purpose: register the official PHP sources used by the first PHP error knowledge batch without mirroring manual pages.

License and attribution:

- Attribution: PHP Documentation Group
- PHP Manual license page: https://www.php.net/manual/en/copyright.php
- License stated there: Creative Commons Attribution 3.0 License or later
- Checked: 2026-06-14

Registered source IDs:

- SRC-PHP-MANUAL-COPYRIGHT
  - URL: https://www.php.net/manual/en/copyright.php
  - class: SOURCE_CLASS_A_PRIMARY
  - type: OFFICIAL_DOCS
  - supports: PHP manual licensing and attribution.

- SRC-PHP-MANUAL-ERROR-CONSTANTS
  - URL: https://www.php.net/manual/en/errorfunc.constants.php
  - class: SOURCE_CLASS_A_PRIMARY
  - type: OFFICIAL_DOCS
  - supports: PHP error-level names, severity descriptions, current numeric values and selected PHP 8.4 notes.

- SRC-PHP-MANUAL-THROWABLE-FAMILY
  - URL: https://www.php.net/manual/en/language.exceptions.php
  - class: SOURCE_CLASS_A_PRIMARY
  - type: OFFICIAL_DOCS
  - supports: PHP Throwable, Exception, Error and predefined error/exception class routing.

- SRC-PHP-RELEASE-8-4
  - URL: https://www.php.net/releases/8.4/en.php
  - class: SOURCE_CLASS_A_PRIMARY
  - type: OFFICIAL_DOCS
  - supports: PHP 8.4 release context for future version notes.

- SRC-PHP-RFC-DEPRECATIONS-8-4
  - URL: https://wiki.php.net/rfc/deprecations_php_8_4
  - class: SOURCE_CLASS_A_PRIMARY
  - type: PRIMARY_SOURCE
  - supports: PHP 8.4 deprecation context where specifically cited.

Limitations:

- Historical introduced and removed version metadata requires a separate version-note pass.
- PHP 8.5 was not imported as factual target in this batch.
- Extension, Composer, runtime-configuration, SAPI/webserver and TYPO3-specific PHP errors remain separate follow-up batches.
- Community sources were not used in this batch.
- Intended nested source path was blocked by connector filtering; current fallback path is this file.

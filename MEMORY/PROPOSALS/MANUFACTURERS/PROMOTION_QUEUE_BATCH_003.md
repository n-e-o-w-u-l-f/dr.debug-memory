# Batch 003 one-by-one promotion queue

Status: PROPOSED_QUEUE_REVIEW_REQUIRED
Rule: Promote at most one manufacturer per reviewed change after duplicate search, source-record review, alias review, conflict review, redaction check and validation.

| # | Candidate | Status | Blocking note |
|---:|---|---|---|
| 1 | Hewlett Packard Enterprise | ALIAS_CONFLICT_REVIEW_REQUIRED | legacy-name split: HPE is separate from HP Inc., but overlaps the historic Hewlett-Packard name; keep HPE separate from existing HP canonical and note the legacy alias. |
| 2 | Supermicro | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 3 | Fujitsu | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 4 | Dynabook | ALIAS_CONFLICT_REVIEW_REQUIRED | legacy-name split: Dynabook/Toshiba PC support is separate from other Toshiba product lines; keep Toshiba PC as alias only. |
| 5 | Framework Computer | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 6 | System76 | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 7 | TUXEDO Computers | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 8 | Schenker Technologies | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 9 | Clevo | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 10 | Getac | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 11 | Durabook | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 12 | Advantech | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 13 | Siemens | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 14 | Beckhoff Automation | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 15 | Kontron | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 16 | AAEON | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 17 | DFI | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 18 | Axiomtek | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 19 | Lanner Electronics | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 20 | OnLogic | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 21 | Micron Technology | ALIAS_CONFLICT_REVIEW_REQUIRED | brand relationship: Micron overlaps Crucial-by-Micron from batch 001; keep Micron as canonical enterprise/semiconductor entity, Crucial as alias/sub-brand or separate only if review decides. |
| 22 | Kioxia | ALIAS_CONFLICT_REVIEW_REQUIRED | rename/acquisition: Kioxia is former Toshiba Memory; keep Toshiba Memory as alias, do not merge with Dynabook/Toshiba PC. |
| 23 | Transcend | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 24 | ADATA | SOURCE_RECORD_READY_SECURITY_GAP | sub-brand review: XPG should be alias unless promoted separately by product-scope evidence. |
| 25 | PNY | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 26 | Lexar | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 27 | TeamGroup | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 28 | Silicon Power | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 29 | Apacer | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 30 | OWC | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 31 | D-Link | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 32 | Zyxel | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 33 | DrayTek | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 34 | AVM | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 35 | Keenetic | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 36 | Tenda | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 37 | GL.iNet | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 38 | Linksys | SOURCE_RECORD_READY_SECURITY_GAP | ownership/history review: keep as independent network-device canonical candidate unless existing Belkin/Foxconn canonical appears. |
| 39 | EnGenius | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 40 | Grandstream | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 41 | Extreme Networks | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 42 | Fortinet | SOURCE_RECORD_READY_REVIEW_REQUIRED | product-line alias: FortiGate should be alias/product line, not separate canonical manufacturer. |
| 43 | Peplink | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 44 | Teltonika Networks | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 45 | TerraMaster | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 46 | ASUSTOR | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 47 | Buffalo | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 48 | Promise Technology | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 49 | Xerox | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 50 | Ricoh | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 51 | Lexmark | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 52 | Kyocera Document Solutions | SOURCE_RECORD_READY_REVIEW_REQUIRED | corporate/product-line split: distinguish from broader Kyocera corporate/device entities. |
| 53 | Zebra Technologies | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 54 | Plustek | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 55 | Pantum | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 56 | BenQ | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 57 | ViewSonic | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 58 | EIZO | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 59 | AOC | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 60 | iiyama | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 61 | Planar | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 62 | Bose | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 63 | Sonos | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 64 | Sennheiser | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 65 | Yamaha | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 66 | Denon | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 67 | Marantz | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 68 | Shure | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 69 | Audio-Technica | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 70 | Focusrite | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 71 | PreSonus | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 72 | Native Instruments | ALIAS_CONFLICT_REVIEW_REQUIRED | short alias NI can conflict with National Instruments; avoid short alias in canonical matching unless context says audio hardware/software. |
| 73 | Roland | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 74 | Nikon | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 75 | Fujifilm | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 76 | OM Digital Solutions | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 77 | Leica Camera | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 78 | GoPro | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 79 | Insta360 | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 80 | DJI | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 81 | Blackmagic Design | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 82 | Hikvision | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 83 | Dahua Technology | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 84 | Reolink | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 85 | Arlo | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 86 | Google | ALIAS_CONFLICT_REVIEW_REQUIRED | sub-brand review: Pixel and Nest should stay aliases/product families unless separate canonical scope is explicitly needed. |
| 87 | OnePlus | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 88 | OPPO | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 89 | vivo | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 90 | Xiaomi | SOURCE_RECORD_READY_REVIEW_REQUIRED | sub-brand review: Mi, Redmi and POCO should stay aliases/product families. |
| 91 | Honor | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 92 | Nothing | SOURCE_RECORD_READY_REVIEW_REQUIRED | brand/company match appears straightforward, but audio alias scope should remain product-family only. |
| 93 | Fairphone | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 94 | ZTE | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| 95 | Seeed Studio | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 96 | Adafruit | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 97 | SparkFun | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 98 | PINE64 | SOURCE_RECORD_READY_SECURITY_GAP | store/project naming review: Pine Store should be alias only. |
| 99 | Radxa | SOURCE_RECORD_READY_SECURITY_GAP | security_url UNKNOWN; add/confirm advisory/security source before REVIEWED/CANONICAL |
| 100 | Hardkernel | SOURCE_RECORD_READY_SECURITY_GAP | product-line alias: ODROID should be alias/product line. |

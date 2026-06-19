# DR-20260620-known-artifacts-loop-003-iana-source-candidates

Status: APPLIED_REPORT
Mode: OWNER_ADMIN_MODE
Command: memory loop known-artifacts continuation
Continuation from: `MEMORY cursor: known_artifacts/report-002-complete; next=source-registry-extraction-batch; preferred-family=iana-or-manufacturer; batch-size=25`
Created: 2026-06-20
Repository: n-e-o-w-u-l-f/dr.debug-memory
Artifact class: SOURCE_REGISTRY_EXTRACTION_CANDIDATES
Family: IANA networking registry
Batch size applied: 25 source-record candidates

## Scope

This pass extracts 25 bounded source-record candidates from official IANA/IETF sources for later review. It does not write canonical MEMORY records, does not promote source-registry records, and does not assert that any observed traffic corresponds to the assigned service.

## Source baseline

Primary source URL: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
Publisher: IANA / Public Technical Identifiers / ICANN
Source class: `B_OFFICIAL_PROJECT_OR_STANDARD`
Retrieved at: 2026-06-20
Registry last updated: 2026-06-17
Supporting procedure source: `https://datatracker.ietf.org/doc/html/rfc6335`
Licensing source: `https://www.iana.org/help/licensing-terms`

## Critical limitation copied into every later canonical/import review

An IANA service/port assignment is registry evidence only. It is not evidence that traffic is legitimate, safe, endorsed, or actually using the assigned service. Runtime diagnosis still requires packet/process/log evidence from the target system.

## Candidate source records

### SR-CAND-IANA-PORTREG-001

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `Service Name and Transport Protocol Port Number Registry`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `IANA service-name and transport-protocol port-number registry metadata`
- versions: `registry last updated 2026-06-17`
- claim_supported: `IANA maintains the Service Name and Transport Protocol Port Number Registry for TCP, UDP, DCCP, and SCTP service/port assignments.`
- limitations: `Registry assignment is not runtime service evidence and not endorsement of any application, product, or traffic.`
- license_or_terms_note: `IANA protocol registry data is covered by IANA/IETF protocol registry licensing terms; RFC documents are excluded from that registry-data statement.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-002

- url: `https://datatracker.ietf.org/doc/html/rfc6335`
- title: `RFC 6335 - Internet Assigned Numbers Authority (IANA) Procedures for the Management of the Service Name and Transport Protocol Port Number Registry`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IETF / IANA procedure reference`
- retrieved_at: `2026-06-20`
- scope: `port/service assignment procedure`
- versions: `RFC 6335, August 2011`
- claim_supported: `RFC 6335 defines IANA procedures for service-name and transport-protocol port-number registry assignment and maintenance.`
- limitations: `Procedure source; individual registry rows require the live registry for current assignment state.`
- license_or_terms_note: `RFC copyright and IETF Trust terms apply; not treated as protocol registry CC0 data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-003

- url: `https://www.iana.org/help/licensing-terms`
- title: `Licensing Terms - Joint Statement of IANA and IETF Concerning Copyright Rights in the Protocol Registries`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / IETF`
- retrieved_at: `2026-06-20`
- scope: `protocol registry licensing`
- versions: `last revised 2021-11-10`
- claim_supported: `IANA and IETF state that protocol registry data directly linked from their protocol registry pages is intended for broad reuse under CC0-like terms, with disclaimers and exclusions.`
- limitations: `The statement excludes other linked materials, including RFC documents, and does not affect patent/trademark/data-protection rights.`
- license_or_terms_note: `Use as license note for protocol registry data only; not for RFC full text or third-party linked material.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-004

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA port assignment limitation note`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `diagnostic limitation for registered port interpretation`
- versions: `registry last updated 2026-06-17`
- claim_supported: `IANA warns that port-number assignment does not imply endorsement and that observed traffic on a registered port does not necessarily correspond to the assigned service.`
- limitations: `Use this as an anti-overclaim guard in diagnostics; it does not identify traffic by itself.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-005

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA port range definitions`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `port-number range classification`
- versions: `registry last updated 2026-06-17`
- claim_supported: `IANA describes System Ports as 0-1023, User Ports as 1024-49151, and Dynamic/Private Ports as 49152-65535; Dynamic Ports are not assigned.`
- limitations: `Range classification does not prove a running service or safe traffic.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-006

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: port 0 tcp/udp reserved`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `port 0 tcp/udp registry state`
- versions: `registry last updated 2026-06-17; row date 2024-12-20`
- claim_supported: `Port 0 is listed as Reserved for both TCP and UDP.`
- limitations: `Reserved registry state only; no runtime traffic claim.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-007

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: tcpmux 1 tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name tcpmux, port 1, tcp/udp`
- versions: `registry last updated 2026-06-17`
- claim_supported: `The service name tcpmux is listed for port 1 over TCP and UDP with description TCP Port Service Multiplexer.`
- limitations: `Registry assignment only; observed port 1 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-008

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: ports 2 and 3 reserved tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `ports 2 and 3 tcp/udp registry state`
- versions: `registry last updated 2026-06-17; row date 2025-02-13`
- claim_supported: `Ports 2 and 3 are listed as Reserved for TCP and UDP, with notes that they were de-assigned on 2025-02-13 and were previously compressnet-related.`
- limitations: `Historical row note only; not evidence of current service use.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-009

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: port 4 unassigned tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `port 4 tcp/udp registry state`
- versions: `registry last updated 2026-06-17`
- claim_supported: `Port 4 is listed as Unassigned for TCP and UDP.`
- limitations: `Unassigned registry state does not prove absence of traffic or safety of traffic.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-010

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: rje 5 tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name rje, port 5, tcp/udp`
- versions: `registry last updated 2026-06-17`
- claim_supported: `The service name rje is listed for port 5 over TCP and UDP with description Remote Job Entry.`
- limitations: `Registry assignment only; observed port 5 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-011

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: port 6 unassigned tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `port 6 tcp/udp registry state`
- versions: `registry last updated 2026-06-17`
- claim_supported: `Port 6 is listed as Unassigned for TCP and UDP.`
- limitations: `Unassigned registry state does not prove absence of traffic or safety of traffic.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-012

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: echo 7 tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name echo, port 7, tcp/udp`
- versions: `registry last updated 2026-06-17`
- claim_supported: `The service name echo is listed for port 7 over TCP and UDP with description Echo.`
- limitations: `Registry assignment only; observed port 7 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-013

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: port 8 unassigned tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `port 8 tcp/udp registry state`
- versions: `registry last updated 2026-06-17`
- claim_supported: `Port 8 is listed as Unassigned for TCP and UDP.`
- limitations: `Unassigned registry state does not prove absence of traffic or safety of traffic.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-014

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: discard 9 tcp/udp/sctp/dccp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name discard, port 9, tcp/udp/sctp/dccp`
- versions: `registry last updated 2026-06-17; SCTP row date 2022-02-07`
- claim_supported: `The service name discard is listed for port 9 over TCP, UDP, SCTP, and DCCP with description Discard.`
- limitations: `Registry assignment only; observed port 9 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-015

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: port 10 unassigned tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `port 10 tcp/udp registry state`
- versions: `registry last updated 2026-06-17`
- claim_supported: `Port 10 is listed as Unassigned for TCP and UDP.`
- limitations: `Unassigned registry state does not prove absence of traffic or safety of traffic.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-016

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: systat 11 tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name systat, port 11, tcp/udp`
- versions: `registry last updated 2026-06-17`
- claim_supported: `The service name systat is listed for port 11 over TCP and UDP with description Active Users.`
- limitations: `Registry assignment only; observed port 11 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-017

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: port 12 unassigned tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `port 12 tcp/udp registry state`
- versions: `registry last updated 2026-06-17`
- claim_supported: `Port 12 is listed as Unassigned for TCP and UDP.`
- limitations: `Unassigned registry state does not prove absence of traffic or safety of traffic.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-018

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: daytime 13 tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name daytime, port 13, tcp/udp`
- versions: `registry last updated 2026-06-17`
- claim_supported: `The service name daytime is listed for port 13 over TCP and UDP with description Daytime and reference RFC867.`
- limitations: `Registry assignment only; observed port 13 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-019

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: ports 14 through 16 unassigned tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `ports 14-16 tcp/udp registry state`
- versions: `registry last updated 2026-06-17`
- claim_supported: `Ports 14, 15, and 16 are listed as Unassigned for TCP/UDP, with TCP port 15 carrying a historical note that it was netstat.`
- limitations: `Unassigned/historical registry state does not prove absence of traffic or safety of traffic.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-020

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: qotd 17 tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name qotd, port 17, tcp/udp`
- versions: `registry last updated 2026-06-17`
- claim_supported: `The service name qotd is listed for port 17 over TCP and UDP with description Quote of the Day.`
- limitations: `Registry assignment only; observed port 17 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-021

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: msp 18 tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name msp, port 18, tcp/udp`
- versions: `registry last updated 2026-06-17`
- claim_supported: `The service name msp is listed for port 18 over TCP and UDP with description Message Send Protocol (historic).`
- limitations: `Historic registry assignment only; observed port 18 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-022

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: chargen 19 tcp/udp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name chargen, port 19, tcp/udp`
- versions: `registry last updated 2026-06-17`
- claim_supported: `The service name chargen is listed for port 19 over TCP and UDP with description Character Generator.`
- limitations: `Registry assignment only; observed port 19 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-023

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: ftp-data 20 tcp/udp/sctp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name ftp-data, port 20, tcp/udp/sctp`
- versions: `registry last updated 2026-06-17; SCTP row date 2022-02-07`
- claim_supported: `The service name ftp-data is listed for port 20 over TCP and UDP as File Transfer [Default Data], and over SCTP as FTP.`
- limitations: `Registry assignment only; observed port 20 traffic requires separate validation.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-024

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: ftp 21 tcp/udp/sctp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name ftp, port 21, tcp/udp/sctp`
- versions: `registry last updated 2026-06-17; SCTP row date 2022-02-07`
- claim_supported: `The service name ftp is listed for port 21 over TCP, UDP, and SCTP; TCP/UDP description is File Transfer Protocol [Control] and reference RFC959.`
- limitations: `Registry assignment only; observed port 21 traffic requires separate validation; TXT key examples are not credentials and are not stored as secrets.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

### SR-CAND-IANA-PORTREG-025

- url: `https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml`
- title: `IANA registry row: ssh 22 tcp/udp/sctp`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- publisher: `IANA / Public Technical Identifiers / ICANN`
- retrieved_at: `2026-06-20`
- scope: `service-name ssh, port 22, tcp/udp/sctp`
- versions: `registry last updated 2026-06-17; SCTP row date 2022-02-07`
- claim_supported: `The service name ssh is listed for port 22 over TCP and UDP with description The Secure Shell (SSH) Protocol and reference RFC4251; SCTP row lists SSH.`
- limitations: `Registry assignment only; observed port 22 traffic requires separate validation and SSH/firewall changes require remote-access rollback planning.`
- license_or_terms_note: `IANA protocol registry terms apply to registry data.`
- crawl_allowed: `UNKNOWN`
- hash_if_file: `not downloaded in this pass`

## Validation performed

- Source hierarchy check: official IANA/IETF sources only.
- Dedupe posture: candidate IDs are proposal/report-scoped; no canonical source-record IDs were created.
- Redaction check: no secrets, customer data, serial numbers, private hostnames, raw logs, raw crawl dumps, downloaded files, or credentials added.
- Runtime-overclaim check: every row keeps registry assignment separate from observed traffic/service/process evidence.
- Binary/rehosting check: no binaries, firmware, drivers, installers, manuals, downloads, checksums, or archive uploads added.
- Changelog/index note: this minimal pass writes only this report to avoid overwriting branch-specific index/changelog state without a fresh branch file snapshot.

## Cursor update

Next resume cursor: `MEMORY cursor: known_artifacts/report-003-iana-source-candidates-complete; next=review-iana-candidates-or-append-index-changelog; batch-size=25`

## Rollback

Delete this report file. No canonical records, index entries, changelog entries, binary files, source-registry records, archive uploads, or status promotions need rollback from this pass.

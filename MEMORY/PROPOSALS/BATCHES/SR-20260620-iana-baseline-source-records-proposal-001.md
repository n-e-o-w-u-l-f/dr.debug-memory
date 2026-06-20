# SR-20260620-iana-baseline-source-records-proposal-001

Status: PROPOSAL_READY_FOR_REVIEW
Mode: OWNER_ADMIN_MODE
Command: memory loop known-artifacts continuation
Continuation from: `MEMORY cursor: known_artifacts/report-004-iana-import-review-complete; next=apply-baseline-source-registry-proposal-or-start-manufacturer-source-batch; batch-size=5-or-25`
Created: 2026-06-20
Repository: n-e-o-w-u-l-f/dr.debug-memory
Artifact class: SOURCE_REGISTRY_PROPOSAL_BATCH
Family: IANA networking registry
Batch size: 5 proposed source records
Reviewed-by-report: `/MEMORY/REPORTS/KNOWN_ARTIFACTS/DR-20260620-known-artifacts-loop-004-iana-import-review.md`

## Scope

This proposal prepares five baseline IANA/IETF source records for later import into `MEMORY/SOURCE_REGISTRY.md`. It does not edit `MEMORY/SOURCE_REGISTRY.md`, does not create canonical MEMORY records, does not promote port-row records, and does not mirror the IANA registry.

## Import boundary

Only these reusable baseline source records are proposed:

1. IANA Service Name and Transport Protocol Port Number Registry metadata.
2. RFC 6335 IANA registry procedure source.
3. IANA protocol registry licensing terms source.
4. IANA port-assignment anti-overclaim limitation source.
5. IANA port range classification source.

Row-level port assignments from report 003 remain deferred until a specific diagnostic family needs them.

## Proposed source records

### SR-PROP-IANA-BASELINE-001

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- proposed_source_id: `iana-service-names-port-numbers-registry`
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
- dedupe_key: `url=https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml | publisher=IANA | scope=registry-metadata`
- import_note: `Import as reusable baseline source only; do not import all registry rows from this proposal.`

### SR-PROP-IANA-BASELINE-002

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- proposed_source_id: `rfc6335-iana-service-port-registry-procedures`
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
- dedupe_key: `url=https://datatracker.ietf.org/doc/html/rfc6335 | rfc=6335 | scope=registry-procedure`
- import_note: `Import as procedure source; keep separate from registry-data licensing source.`

### SR-PROP-IANA-BASELINE-003

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- proposed_source_id: `iana-protocol-registry-licensing-terms`
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
- dedupe_key: `url=https://www.iana.org/help/licensing-terms | publisher=IANA/IETF | scope=protocol-registry-license`
- import_note: `Import as licensing/terms source for protocol registry data; do not generalize to RFCs or third-party linked content.`

### SR-PROP-IANA-BASELINE-004

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- proposed_source_id: `iana-port-assignment-anti-overclaim-note`
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
- dedupe_key: `url=https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml | scope=diagnostic-overclaim-limit`
- import_note: `Import as mandatory diagnostic guard for any port-number interpretation in MEMORY.`

### SR-PROP-IANA-BASELINE-005

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- proposed_source_id: `iana-port-range-classification`
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
- dedupe_key: `url=https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml | scope=port-range-classification`
- import_note: `Import as reusable range-classification source only; no runtime inference.`

## Dedupe notes

- Records 001, 004 and 005 share the same IANA registry URL but support different bounded claims: registry identity, anti-overclaim limitation and range classification.
- A later importer should either create three separate source records with distinct scopes or one source record with clearly separated claim blocks, depending on the current `MEMORY/SOURCE_REGISTRY.md` schema conventions.
- Record 002 must remain separate because RFC text is governed by IETF/RFC terms and is not covered by the IANA protocol-registry-data licensing statement.
- Record 003 must remain separate because it is a licensing/terms source, not a technical registry row source.

## Validation performed

- Source hierarchy check: official IANA/IETF sources only.
- Report lineage check: derived from report 003 and reviewed in report 004.
- Dedupe posture: proposal-scoped IDs only; no canonical source IDs created.
- Second-truth guard: no row-level bulk import and no registry mirror.
- Redaction check: no secrets, credentials, personal data, customer data, serial numbers, private hosts, raw logs or raw crawl dumps added.
- Binary/rehosting check: no binaries, firmware, drivers, installers, manuals, downloads, checksums, archive uploads or rehosting artifacts added.
- Status lifecycle check: proposal-ready for review only; not canonical, not reviewed, not imported.

## Cursor update

Next resume cursor: `MEMORY cursor: known_artifacts/sr-proposal-iana-baseline-001-complete; next=append-proposal-index-or-start-manufacturer-source-batch; batch-size=5-or-25`

## Rollback

Delete this proposal file. No canonical records, source-registry records, index entries, changelog entries, binaries, archive uploads, status promotions or broad reclassifications need rollback from this pass.

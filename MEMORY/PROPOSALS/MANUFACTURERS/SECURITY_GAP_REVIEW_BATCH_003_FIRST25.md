# Batch 003 security/advisory gap review — first 25

Status: PROPOSAL_REVIEW_REQUIRED
Updated: 2026-06-21
Scope: first 25 `SOURCE_RECORD_READY_SECURITY_GAP` candidates from batch 003.

## Review method

- Official vendor domains only.
- No login bypass.
- No paywall bypass.
- No raw crawl dumps.
- No binary downloads.
- No rehosting.
- Security pages are proposal evidence only until reviewed.

## Results

| # | Candidate | Prior status | Proposed security review status | Proposed security/advisory URL | Note |
|---:|---|---|---|---|---|
| 1 | TUXEDO Computers | UNKNOWN security_url | OFFICIAL_SECURITY_UPDATE_ARTICLE_REVIEW_REQUIRED | https://www.tuxedocomputers.com/en/Critical-Sudo-Vulnerability-Affects-Linux-Systems-C-Already-Patched-in-TUXEDO-OS.tuxedo | Official vendor article found for a security update, but not a general product security/advisory landing page. Keep gap open for a permanent advisory URL. |
| 2 | Schenker Technologies / XMG | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 3 | Clevo | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 4 | Durabook | UNKNOWN security_url | OFFICIAL_SECURITY_ADVISORY_FOUND_REVIEW_REQUIRED | https://www.durabook.com/en/support/security-advisory/ | Official Product Security Advisory page found. Review before writing into candidate source record. |
| 5 | AAEON | UNKNOWN security_url | OFFICIAL_SECURITY_PROCESS_EVIDENCE_REVIEW_REQUIRED | https://www.aaeon.com/en/news/detail/aaeon_iec_62443-4-1_certification | Official IEC 62443-4-1 product-security lifecycle certification notice found, but not a vulnerability/advisory landing page. |
| 6 | DFI | UNKNOWN security_url | OFFICIAL_SECURITY_STATEMENT_REVIEW_REQUIRED | https://www.dfi.com/pressroom/content/371 | Official MDS security vulnerability statement found, but not a general advisory landing page. |
| 7 | Axiomtek | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | Only official cybersecurity solution material was found, not a product vulnerability/advisory page. |
| 8 | Lanner Electronics | UNKNOWN security_url | OFFICIAL_VULNERABILITY_REPORTING_FOUND_REVIEW_REQUIRED | https://www.lannerinc.com/contact/report-vulnerabilities | Official vulnerability reporting page found. |
| 9 | OnLogic | UNKNOWN security_url | OFFICIAL_SECURITY_ADVISORY_FOUND_REVIEW_REQUIRED | https://support.onlogic.com/support-articles/security-advisories/ol-2025-0a0101 | Official support security advisory found; use advisory area as seed and review exact landing URL before promotion. |
| 10 | Transcend | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 11 | ADATA / XPG | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | ESG/information-security governance documents are not product vulnerability/advisory sources. |
| 12 | PNY | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | Legal/privacy/software-marketing pages are not product vulnerability/advisory sources. |
| 13 | Lexar | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 14 | TeamGroup | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 15 | Silicon Power | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 16 | Apacer | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | Official annual/sustainability material mentions cybersecurity governance and product security features, but is not a product vulnerability/advisory page. |
| 17 | OWC | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 18 | Keenetic | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 19 | Tenda | UNKNOWN security_url | OFFICIAL_SECURITY_ADVISORY_FOUND_REVIEW_REQUIRED | https://www.tendacn.com/page/securityadvisory | Official Product Security Advisory page found. |
| 20 | Linksys | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | Privacy/update text mentions security vulnerability fixes but is not a product security advisory landing page. |
| 21 | EnGenius | UNKNOWN security_url | OFFICIAL_SECURITY_ADVISORY_FOUND_REVIEW_REQUIRED | https://www.engeniustech.com/fragattacks-security-advisory-for-engenius-wi-fi-products.html | Official FragAttacks advisory found; review if a permanent advisory index exists. |
| 22 | TerraMaster | UNKNOWN security_url | OFFICIAL_SECURITY_WARNING_REVIEW_REQUIRED | https://www.terra-master.com/it-it/blogs/news/security-vulnerabilities-warning | Official security vulnerability warning found, but not a formal advisory index. |
| 23 | Buffalo | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |
| 24 | Promise Technology | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | Download-center/field-advisory-like firmware notes were found, but no general product security/advisory source was validated. |
| 25 | Plustek | UNKNOWN security_url | SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED | UNKNOWN | No acceptable official product security/advisory landing page identified in this pass. |

## Summary

- Confirmed official advisory/reporting/update evidence: 8 candidates.
- Kept as security-source-not-found review holds: 17 candidates.
- No candidate was promoted to canonical status.
- No source URL was copied into canonical manufacturer records.
- No binaries or downloads were accessed.

## Follow-up

1. Review confirmed official URLs and convert acceptable ones into source-record updates.
2. Keep `SECURITY_SOURCE_NOT_FOUND_OFFICIAL_REVIEW_REQUIRED` entries blocked from `REVIEWED` or `CANONICAL` status until a security/advisory source is found or the absence is explicitly accepted by reviewer policy.
3. Continue with candidates 26-50 from the security-gap list in the next resumable batch.

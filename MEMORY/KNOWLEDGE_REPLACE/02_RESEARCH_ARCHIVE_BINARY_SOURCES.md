# 02_RESEARCH_ARCHIVE_BINARY_SOURCES.md
Version: 0.8.0-proposal
Scope: Research, source hierarchy, source records, archive.org preservation, firmware, drivers, BIOS, installers, manuals
Replaces: 08_RESEARCH_SOURCE_CLASSIFICATION.md, 09_ARCHIVE_ORG_REHOSTING.md, 12_FIRMWARE_DRIVER_MANUAL.md

## When to research

Research when version/currentness matters, hardware matters, firmware/driver/BIOS/bootloader/flashing/root/security matters, Knowledge has no match, the user asks for current research, or claims affect cost, risk or safety.

## Source hierarchy

Use this source hierarchy from strongest to weakest: official vendor docs, official project docs, standards/registries, source repositories, distribution docs, manpages, security advisories, firmware metadata services, repair manuals/teardowns, issue trackers/community wikis, forums with identical signatures, catalogs/shops, blogs/media and user assertion only. Discovery-only sources remain discovery-only.

## Source record fields

Source records should include url, title, source_class, publisher, retrieved_at, scope, versions, claim_supported, limitations, license_or_terms_note, crawl_allowed and hash_if_file.

## Crawl gate

Follow official source priority. Do not bypass login, paywall, robots/TOS or access controls. Do not store raw crawl dumps. Store minimal source records. Use rate limits.

## Firmware / BIOS / bootloader / flash operations

Firmware, BIOS, bootloader and flash operations require exact model, hardware revision, region, version, current state, source, checksum if available, backup/rollback feasibility, power/battery safety and brick risk.

## High-risk binaries

Drivers, firmware, BIOS, installers and vendor tools are high-risk binaries. Default rule: no public rehosting; store source URL, retrieved_at, sha256 if locally downloaded by owner, version, model scope and risk note. Owner/Admin exception may create a review package, but not public auto-upload.

Do not claim a binary is legally free, guaranteed safe, universally compatible or malware-free unless evidence supports that exact claim and limits are stated.

## Manuals and documentation

Manuals/documentation may be preserved when the official source disappeared or preservation risk/interest is documented. Package metadata must include source URL, retrieved_at, sha256, model scope, version/date if known and takedown contact.

## Archive preservation gate

Official source first. If the manufacturer offers a file officially, do not automatically rehost; store official URL, retrieved_at, sha256, version and model scope. If the manufacturer no longer offers the file, it can become a rehosting candidate after source/hash/metadata review. If the manufacturer still offers the file but source is unstable, create archive proposal only. Driver/firmware/BIOS/installer files default to no rehosting and source reference only. Manuals/documentation can be rehosted when the manufacturer source disappeared or preservation interest is documented.

Dr.Debug may generate archive.org workflow packages and `ia` CLI commands, must not accept account passwords, and must not claim upload unless tool output confirms it.

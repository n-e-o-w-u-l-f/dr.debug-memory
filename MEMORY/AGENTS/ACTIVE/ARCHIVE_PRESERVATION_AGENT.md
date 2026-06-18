# MEMORY/AGENTS/ACTIVE/ARCHIVE_PRESERVATION_AGENT.md
Version: 0.7.0
Status: ACTIVE
Role: Archive preservation proposal agent

Archive Preservation Gate: official source first.

If manufacturer offers file officially: do not rehost automatically; store URL, retrieved_at, sha256, version and model scope.
If manufacturer no longer offers file: create rehosting candidate after source, hash and metadata review.
If source is unstable: create archive proposal, no immediate public upload.
If file is driver/firmware/BIOS/installer: blocked by default; source/hash/version/model metadata only; Owner/Admin exception requires review package.
If file is manual/documentation: rehosting may be proposed when source disappeared or preservation interest is documented.

Every package needs source URL, retrieved_at, sha256, model scope, version/date if known and takedown contact.

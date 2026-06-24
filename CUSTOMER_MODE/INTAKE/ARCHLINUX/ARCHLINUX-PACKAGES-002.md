---
id: ARCHLINUX-PACKAGES-002
batch_id: ARCHLINUX-PACKAGES-002
created_at: 2026-06-24
updated_at: 2026-06-24
mode: ADMIN_MODE
family: linux
distribution: Arch Linux
status: PROPOSAL_READY_FOR_REVIEW
canonical_status: PROPOSAL_ONLY
validation_status: SOURCE_CONFIRMED
redaction_status: clean; no secrets, private logs, serials, binaries, full manuals, or package mirrors
previous_batch: ARCHLINUX-CANARY-001
---

# Arch Linux package-management repair intake 002

Scope: package-management commands and package-repair utilities, not an exhaustive mirror of all Arch package metadata. Canonical technical truth remains proposal-only until reviewed.

## Source records

| id | title | source_url | source_type | evidence | repair scope |
|---|---|---|---|---|---|
| PKG-SRC-001 | pacman package page | https://archlinux.org/packages/core/x86_64/pacman/ | official Arch package page | E3 | package version, package contents, libalpm dependency/support scope |
| PKG-SRC-002 | pacman file list | https://archlinux.org/packages/core/x86_64/pacman/files/ | official Arch package page | E3 | confirms bundled commands: pacman, makepkg, pacman-key, repo-add, repo-remove, vercmp |
| PKG-SRC-003 | pacman-key(8) | https://man.archlinux.org/man/pacman-key.8 | Arch manual pages | E3 | package signing keyring operations |
| PKG-SRC-004 | makepkg(8) | https://man.archlinux.org/man/makepkg.8 | Arch manual pages | E3 | package build diagnostics and error codes |
| PKG-SRC-005 | makepkg.conf(5) | https://man.archlinux.org/man/makepkg.conf.5.en | Arch manual pages | E3 | build/sign/check/default option diagnosis |
| PKG-SRC-006 | PKGBUILD(5) | https://man.archlinux.org/man/PKGBUILD.5 | Arch manual pages | E3 | mandatory PKGBUILD fields and package metadata diagnosis |
| PKG-SRC-007 | repo-add(8) | https://man.archlinux.org/man/repo-add.8 | Arch manual pages | E3 | local repository database maintenance |
| PKG-SRC-008 | pacman-contrib package page | https://archlinux.org/packages/extra/x86_64/pacman-contrib/ | official Arch package page | E3 | contributed pacman scripts and optional dependencies |
| PKG-SRC-009 | pacman-contrib file list | https://archlinux.org/packages/extra/x86_64/pacman-contrib/files/ | official Arch package page | E3 | confirms checkupdates, paccache, pacdiff, pactree, rankmirrors, updpkgsums |
| PKG-SRC-010 | paccache(8) | https://man.archlinux.org/man/paccache.8 | Arch manual pages | E3 | package cache cleanup with dry-run and retention controls |
| PKG-SRC-011 | pacdiff(8) | https://man.archlinux.org/man/pacdiff.8.en | Arch manual pages | E3 | pacnew/pacsave/pacorig maintenance |
| PKG-SRC-012 | archlinux-keyring package page | https://archlinux.org/packages/core/any/archlinux-keyring/ | official Arch package page | E3 | current keyring package and dependency on pacman |
| PKG-SRC-013 | archlinux-keyring file list | https://archlinux.org/packages/core/any/archlinux-keyring/files/ | official Arch package page | E3 | confirms /usr/share/pacman/keyrings files and WKD sync timer/service |
| PKG-SRC-014 | alpm-db-desc(5) | https://man.archlinux.org/man/extra/alpm-db/alpm-db-desc.5.en | Arch manual pages | E3 | local libalpm database metadata format, current version note |
| PKG-SRC-015 | devtools package page | https://archlinux.org/packages/extra/any/devtools/ | official Arch package page | E3 | Arch package maintainer tooling scope |
| PKG-SRC-016 | devtools file list | https://archlinux.org/packages/extra/any/devtools/files/ | official Arch package page | E3 | confirms pkgctl, makechrootpkg, mkarchroot, arch-nspawn tooling |

## Knowledge items

### ARCHLINUX-PKG-PACMAN-002 — pacman package manager baseline

- id: ARCHLINUX-PKG-PACMAN-002
- title: pacman package manager baseline
- command_or_topic: pacman; libalpm; pacman-conf; pacman-db-upgrade
- manpage_name: pacman(8), pacman.conf(5), alpm-db-desc(5)
- source_url: https://archlinux.org/packages/core/x86_64/pacman/
- source_type: official Arch package page plus Arch manual pages
- source_status: source-backed
- Arch relevance: core package manager and libalpm provider
- repair_relevance: package install/update/remove failures, dependency resolution, database format, missing command sanity check
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: /usr/bin/pacman; /etc/pacman.conf; /var/lib/pacman/local; /var/cache/pacman/pkg; libalpm.so
- diagnosis: confirm pacman package, file set, config and local database before repair
- safe command examples: `pacman --version`; `pacman-conf --config /etc/pacman.conf`; `pacman -Q pacman`; `pacman -Qkk pacman`
- expected output: installed package and config paths visible; modified/missing pacman files identified
- danger level: LOW for diagnostics; MEDIUM for repair/install operations
- rollback or prevention: preserve `/etc/pacman.conf` and package cache before replacing pacman
- limitations: local database corruption may require log/cache based reconstruction; not covered as validated workflow
- dedupe notes: extends canary PACMAN item with package-file scope
- canonical_status: PROPOSAL_ONLY

### ARCHLINUX-PKG-KEYRING-002 — archlinux-keyring and pacman-key repair

- id: ARCHLINUX-PKG-KEYRING-002
- title: archlinux-keyring and pacman-key repair
- command_or_topic: archlinux-keyring; pacman-key; archlinux-keyring-wkd-sync
- manpage_name: pacman-key(8)
- source_url: https://archlinux.org/packages/core/any/archlinux-keyring/
- source_type: official Arch package page plus Arch manual pages
- source_status: source-backed
- Arch relevance: official Arch package signing trust path
- repair_relevance: invalid or unknown trust, expired key, missing keyring files, broken keyring service/timer
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: /etc/pacman.d/gnupg; /usr/share/pacman/keyrings/archlinux.gpg; archlinux-trusted; archlinux-revoked; archlinux-keyring-wkd-sync.timer
- diagnosis: verify keyring package, keyring files, clock and pacman-key state before reset
- safe command examples: `timedatectl status`; `pacman -Q archlinux-keyring`; `pacman-key --list-keys`; `systemctl status archlinux-keyring-wkd-sync.timer --no-pager`
- expected output: keyring package version and keyring database health visible
- danger level: MEDIUM; HIGH if deleting `/etc/pacman.d/gnupg`
- rollback or prevention: copy `/etc/pacman.d/gnupg` before reset; update `archlinux-keyring` before long-delayed full upgrades
- limitations: keyserver/WKD network failures need separate network diagnosis
- dedupe notes: extends canary KEYRING item with package-file scope
- canonical_status: PROPOSAL_ONLY

### ARCHLINUX-PKG-MAKEPKG-002 — makepkg/PKGBUILD build diagnosis

- id: ARCHLINUX-PKG-MAKEPKG-002
- title: makepkg and PKGBUILD build diagnosis
- command_or_topic: makepkg; PKGBUILD; makepkg.conf
- manpage_name: makepkg(8), PKGBUILD(5), makepkg.conf(5)
- source_url: https://man.archlinux.org/man/makepkg.8
- source_type: official Arch manual pages
- source_status: source-backed
- Arch relevance: local/AUR/source package build repair
- repair_relevance: checksum, PGP, missing dependency, PKGBUILD parse, root build, permission and signing failures
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: PKGBUILD; .SRCINFO; /etc/makepkg.conf; source cache; GPG homedir
- diagnosis: map makepkg exit codes and PKGBUILD mandatory fields before changing build flags
- safe command examples: `makepkg --printsrcinfo`; `makepkg --verifysource`; `makepkg --packagelist`; `grep -E '^(pkgname|pkgver|pkgrel|arch)=' PKGBUILD`
- expected output: PKGBUILD metadata parses; source verification result is explicit
- danger level: LOW for parse/verify; MEDIUM/HIGH when installing dependencies or built packages
- rollback or prevention: build as non-root; use clean build directory; keep original PKGBUILD; do not use `--skipchecksums` or `--skippgpcheck` as first-line repair
- limitations: AUR helper behavior out of scope; packaging review still required
- dedupe notes: new package-build repair item
- canonical_status: PROPOSAL_ONLY

### ARCHLINUX-PKG-REPOADD-002 — repo-add/repo-remove local repository repair

- id: ARCHLINUX-PKG-REPOADD-002
- title: repo-add and repo-remove local repository repair
- command_or_topic: repo-add; repo-remove; local pacman repository database
- manpage_name: repo-add(8)
- source_url: https://man.archlinux.org/man/repo-add.8
- source_type: official Arch manual page
- source_status: source-backed
- Arch relevance: local repository and package database maintenance
- repair_relevance: stale local repo db, missing package entries, bad signatures, failed local package installs
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: customrepo.db; customrepo.files; package files; package signatures
- diagnosis: verify parent directory, package files, database extension, signatures and lock behavior before rewriting repository database
- safe command examples: `repo-add -v /path/repo/custom.db.tar.zst /path/repo/*.pkg.tar.zst`; `repo-add -v --verify /path/repo/custom.db.tar.zst /path/repo/pkg.pkg.tar.zst`
- expected output: local repo database updated or signature/lock error shown
- danger level: MEDIUM
- rollback or prevention: copy repo database before update; use `--verify` when signatures matter; do not run against official repo DBs
- limitations: not for Arch official mirror repair
- dedupe notes: new local repository repair item
- canonical_status: PROPOSAL_ONLY

### ARCHLINUX-PKG-PACMANCONTRIB-002 — pacman-contrib diagnostics

- id: ARCHLINUX-PKG-PACMANCONTRIB-002
- title: pacman-contrib diagnostics
- command_or_topic: checkupdates; paccache; pacdiff; pactree; rankmirrors; updpkgsums
- manpage_name: paccache(8), pacdiff(8), checkupdates(8), pactree(8)
- source_url: https://archlinux.org/packages/extra/x86_64/pacman-contrib/
- source_type: official Arch package page and Arch manual pages
- source_status: source-backed
- Arch relevance: official extra package with contributed pacman scripts
- repair_relevance: pending update visibility, cache cleanup, .pacnew/.pacsave maintenance, dependency tree inspection, mirror ranking
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: /var/cache/pacman/pkg; pacman local DB; .pacnew/.pacsave files; paccache.timer; pacman-filesdb-refresh.timer
- diagnosis: use read-only/dry-run utilities before deleting cache or merging config
- safe command examples: `checkupdates`; `paccache -d`; `pacdiff --output`; `pactree -r <pkg>`; `rankmirrors -n 6 /etc/pacman.d/mirrorlist`
- expected output: update list, removable cache candidates, config merge candidates or dependency tree
- danger level: LOW for `checkupdates`, `paccache -d`, `pacdiff --output`; MEDIUM for `paccache -r`; HIGH for careless config overwrite
- rollback or prevention: keep at least known-good package versions; backup config before merging; use pacdiff backup option when overwriting
- limitations: some pacman-contrib features need optional dependencies such as diffutils, fakeroot, findutils, plocate, sudo, vim/neovim or perl
- dedupe notes: new package utility repair item
- canonical_status: PROPOSAL_ONLY

### ARCHLINUX-PKG-DEVTOOLS-002 — devtools package-maintainer repair scope

- id: ARCHLINUX-PKG-DEVTOOLS-002
- title: devtools package-maintainer repair scope
- command_or_topic: pkgctl; makechrootpkg; mkarchroot; arch-nspawn; checkpkg; diffpkg; sogrep
- manpage_name: devtools package/tool docs; package file list
- source_url: https://archlinux.org/packages/extra/any/devtools/
- source_type: official Arch package page
- source_status: source-backed for package/tool presence; detailed tool semantics require later dedicated batch
- Arch relevance: official Arch maintainer tooling
- repair_relevance: clean-chroot build failures, package reproducibility checks, dependency/library search
- evidence_level: E2/E3
- last_checked_date: 2026-06-24
- affected_files_or_components: clean chroot roots; package build trees; devtools config; pkgctl operations
- diagnosis: confirm devtools presence before advising maintainer-style build workflows
- safe command examples: `pacman -Q devtools`; `pkgctl --help`; `makechrootpkg --help`; `mkarchroot --help`
- expected output: tool availability and usage surface confirmed
- danger level: MEDIUM; can modify chroots, build roots, package repos or Git state
- rollback or prevention: use disposable chroot/build root; do not run maintainer release commands outside reviewed package workflow
- limitations: detailed pkgctl/release commands deferred to dedicated devtools batch
- dedupe notes: new maintainer tooling scope item
- canonical_status: PROPOSAL_ONLY

## Dedupe and matrix status

- Dedupe: package-management topics extend canary records and avoid duplicating full manuals or Arch package metadata.
- README matrix: not updated because previous path policy only allowed additive CUSTOMER_MODE paths and canonical README/matrix promotion was not requested for this continuation.

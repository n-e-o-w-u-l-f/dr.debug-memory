# Proposal: Linux distributions, man-pages and package metadata source registry seed

Status: PROPOSAL_ONLY
Mode: OWNER_ADMIN_MODE apply requested; proposal-only import
Created: 2026-06-24
Canonical: false
Review required: true

## Scope

This proposal seeds source records for Linux distribution discovery, distro identification, man-pages, official package catalogues, package-manager documentation, package source APIs and cross-distro aggregators.

## Decision

Do not import raw lists of all Linux distributions, all manpages or all packages as canonical memory. Package and distribution metadata changes continuously and would become stale or duplicate truth. Add source records and discovery endpoints; create scoped canonical entries only after dedupe and family-specific source review.

## Evidence model

- Official distro/project docs: E3 SOURCE_CONFIRMED candidates.
- Aggregators/community repositories: E2 DISCOVERY_ONLY unless upstream confirms.
- Counts are volatile and should be queried at use time.

## Proposed taxonomy

- Linux/Distribution/Identification
- Linux/Distribution/Discovery
- Linux/Distribution/Debian-family
- Linux/Distribution/RPM-family
- Linux/Distribution/Arch-family
- Linux/Distribution/Alpine-family
- Linux/Distribution/Nix-family
- Linux/Distribution/Gentoo-family
- Linux/Distribution/openSUSE-SUSE-family
- Linux/Manpages/Linux-man-pages
- Linux/Manpages/Distro-manpages
- Linux/Packages/Debian-APT
- Linux/Packages/RPM-DNF
- Linux/Packages/Arch-pacman
- Linux/Packages/Alpine-apk
- Linux/Packages/Nix-Nixpkgs
- Linux/Packages/Gentoo-Portage
- Linux/Packages/openSUSE-OBS
- Linux/Packages/Cross-distro-aggregators

## Proposed source records

### linux-os-release-spec
- url: https://www.freedesktop.org/software/systemd/man/os-release.html
- title: os-release
- source_class: official_project_docs
- publisher: freedesktop.org / systemd
- retrieved_at: 2026-06-24
- scope: Linux distribution identification
- claim_supported: `/etc/os-release` and `/usr/lib/os-release` contain operating system identification data in newline-separated environment-like assignments.
- limitations: Identifies installed systems; not a complete distro catalogue.
- evidence_level: E3

### linux-man-pages-project
- url: https://www.kernel.org/doc/man-pages/
- title: The Linux man-pages project
- source_class: official_project_docs
- publisher: kernel.org / Linux man-pages project
- retrieved_at: 2026-06-24
- scope: Linux kernel and C library user-space API documentation
- claim_supported: The project documents Linux kernel and C library interfaces used by user-space programs, with glibc as the primary C library focus.
- limitations: Not every distro-specific manpage.
- evidence_level: E3

### man7-linux-manpages-online
- url: https://man7.org/linux/man-pages/
- title: Linux man pages online
- source_class: manpages
- publisher: man7.org
- retrieved_at: 2026-06-24
- scope: HTML rendering of Linux man-pages and curated pages
- claim_supported: Provides Linux man-pages by section, alphabetically, and by project.
- limitations: Prefer upstream project docs where available.
- evidence_level: E3

### debian-packages
- url: https://packages.debian.org/
- title: Debian Packages
- source_class: distribution_docs
- publisher: Debian
- retrieved_at: 2026-06-24
- scope: Debian binary package catalogue
- claim_supported: Official Debian package catalogue for packages included in Debian.
- limitations: Release, component and architecture dependent.
- evidence_level: E3

### debian-sources-api
- url: https://sources.debian.org/doc/api/
- title: Debian Sources API documentation
- source_class: distribution_docs
- publisher: Debian
- retrieved_at: 2026-06-24
- scope: Debian source package metadata/API
- claim_supported: Debian Sources can be queried programmatically and returns JSON; `latest` may be used where a version is required.
- limitations: Source API, not a substitute for apt metadata on a live system.
- evidence_level: E3

### fedora-packages
- url: https://packages.fedoraproject.org/
- title: Fedora Packages
- source_class: distribution_docs
- publisher: Fedora Project
- retrieved_at: 2026-06-24
- scope: Fedora package metadata
- claim_supported: Fedora Packages provides package details including versions, files and dependencies.
- limitations: Fedora-specific; repo state is volatile.
- evidence_level: E3

### arch-package-database
- url: https://archlinux.org/packages/
- title: Arch Linux Package Search
- source_class: distribution_docs
- publisher: Arch Linux
- retrieved_at: 2026-06-24
- scope: Official Arch Linux package database
- claim_supported: Provides detailed package information for packages in official supported repositories.
- limitations: Official repositories only; AUR is separate.
- evidence_level: E3

### arch-aur
- url: https://aur.archlinux.org/
- title: Arch User Repository
- source_class: community_repository
- publisher: Arch Linux community
- retrieved_at: 2026-06-24
- scope: Community PKGBUILD discovery
- claim_supported: AUR is a community-operated repository for user-submitted PKGBUILDs.
- limitations: Community repository; not official binary package truth.
- evidence_level: E2

### alpine-linux-home
- url: https://www.alpinelinux.org/
- title: Alpine Linux
- source_class: official_project_docs
- publisher: Alpine Linux
- retrieved_at: 2026-06-24
- scope: Alpine distribution overview
- claim_supported: Alpine Linux is security-oriented and lightweight, using musl libc and BusyBox.
- limitations: Overview only; package truth should use package index/aports.
- evidence_level: E3

### alpine-package-index
- url: https://pkgs.alpinelinux.org/
- title: Alpine Linux packages
- source_class: distribution_docs
- publisher: Alpine Linux
- retrieved_at: 2026-06-24
- scope: Alpine package index
- claim_supported: Provides package index filters by branch, repository and architecture.
- limitations: Branch and architecture dependent.
- evidence_level: E3

### opensuse-build-service
- url: https://build.opensuse.org/
- title: Open Build Service
- source_class: distribution_docs
- publisher: openSUSE Project
- retrieved_at: 2026-06-24
- scope: openSUSE/SUSE package build service
- claim_supported: Public OBS instance supports openSUSE development and packages built from the same source for multiple distributions.
- limitations: OBS contains many projects; not all are official/stable.
- evidence_level: E3

### opensuse-obs-api
- url: https://build.opensuse.org/apidocs/index
- title: Open Build Service API
- source_class: distribution_docs
- publisher: openSUSE Project
- retrieved_at: 2026-06-24
- scope: OBS API metadata access
- claim_supported: OBS exposes an XML API and expects API-oriented Accept headers instead of web UI queries.
- limitations: Respect API terms and do not crawl blindly.
- evidence_level: E3

### nixos-home
- url: https://nixos.org/
- title: Nix & NixOS
- source_class: official_project_docs
- publisher: NixOS project / NixOS Foundation
- retrieved_at: 2026-06-24
- scope: Nix/NixOS/Nixpkgs overview
- claim_supported: Nixpkgs is a large package collection for the Nix package manager.
- limitations: Counts and channel data are volatile.
- evidence_level: E3

### nixos-search
- url: https://search.nixos.org/
- title: NixOS Search
- source_class: distribution_docs
- publisher: NixOS project
- retrieved_at: 2026-06-24
- scope: NixOS package/options/flake search
- claim_supported: Search interface covers packages, options, third-party flakes and functions.
- limitations: Canonical definitions live in Nixpkgs/repo/channel data.
- evidence_level: E3

### repology
- url: https://repology.org/
- title: Repology
- source_class: package_metadata_service
- publisher: Repology
- retrieved_at: 2026-06-24
- scope: Cross-distribution package version/repository discovery
- claim_supported: Repology monitors many package repositories and compares package versions across them.
- limitations: Aggregator only; do not use as canonical distro package truth.
- evidence_level: E2

## Dedupe keys before promotion

- distro family names and IDs: debian, ubuntu, fedora, rhel, arch, alpine, opensuse, suse, nixos, gentoo
- package managers: apt, dpkg, dnf, rpm, pacman, apk, nix, portage, emerge, zypper, obs
- URLs and normalized titles
- `/etc/os-release` ID and ID_LIKE aliases

## README knowledge matrix note

README matrix was not updated in this apply batch because this is proposal-only and matrix rows must be aligned with current README layout after inspection. Required future fields: searched_total, present_total, missing_total, proposal_only_total, canonical_total, source_confirmed_total, last_checked.

## Apply boundary

This file may be written as proposal-only. Canonical Linux distribution/package/manpage entries require scoped follow-up batches.

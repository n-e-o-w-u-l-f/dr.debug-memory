---
id: ARCHLINUX-PACKAGE-REPAIR-DRAFTS-002
batch_id: ARCHLINUX-PACKAGES-002
created_at: 2026-06-24
updated_at: 2026-06-24
mode: ADMIN_MODE
status: PROPOSAL_READY_FOR_REVIEW
canonical_status: PROPOSAL_ONLY
validation_status: NOT_TESTED
redaction_status: clean; no secrets/logs/full manuals/binaries
---

# Arch Linux package-management repair drafts 002

Drafts only. Require platform gate, backup/snapshot decision and exact error signature before use.

## DRAFT-PKG-BASELINE-002 — package manager baseline diagnosis

```sh
pacman --version
pacman -Q pacman archlinux-keyring pacman-contrib 2>/dev/null || true
pacman-conf --config /etc/pacman.conf | sed -n '1,160p'
pacman -Qkk pacman archlinux-keyring 2>/dev/null || true
ls -ld /var/lib/pacman /var/cache/pacman/pkg /etc/pacman.d/gnupg
```

- expected result: package manager version, package presence, config paths and file-integrity warnings visible.
- danger level: LOW; read-only except commands may touch pacman DB lock state minimally.
- rollback/prevention: do not edit config or delete database based only on this output.

## DRAFT-PKG-KEYRING-002 — keyring diagnosis before reset

```sh
timedatectl status
pacman -Q archlinux-keyring
pacman-key --list-keys | sed -n '1,80p'
pacman-key --updatedb
systemctl status archlinux-keyring-wkd-sync.timer --no-pager 2>/dev/null || true
```

- expected result: clock/keyring package/keyring database and timer state known.
- danger level: LOW for diagnosis, MEDIUM/HIGH for reset.
- rollback/prevention: copy `/etc/pacman.d/gnupg` before destructive reset; update keyring before full upgrade after a long offline period.

## DRAFT-PKG-CACHE-002 — safe cache inspection before cleanup

```sh
du -sh /var/cache/pacman/pkg 2>/dev/null || true
paccache -d
paccache -d -u
```

- expected result: cleanup candidates listed without deletion.
- danger level: LOW for `-d`; MEDIUM for any later `-r` removal.
- rollback/prevention: keep at least one known-good version or move candidates with `paccache -m <dir>` before deletion on fragile systems.

## DRAFT-PKG-PACNEW-002 — config merge candidate diagnosis

```sh
pacdiff --output 2>/dev/null || true
find /etc -name '*.pacnew' -o -name '*.pacsave' -o -name '*.pacorig' 2>/dev/null | sort
```

- expected result: config merge candidates are listed for manual review.
- danger level: LOW for output; HIGH for blind overwrite.
- rollback/prevention: backup current config; prefer interactive diff/merge; never auto-overwrite critical configs on remote systems without alternate access.

## DRAFT-PKG-MAKEPKG-002 — build failure diagnosis

```sh
test -f PKGBUILD || { echo 'PKGBUILD missing'; exit 2; }
grep -E '^(pkgname|pkgver|pkgrel|arch)=' PKGBUILD
makepkg --printsrcinfo
makepkg --verifysource
makepkg --packagelist
```

- expected result: mandatory metadata, parseability, source verification and output package names are known.
- danger level: LOW for parse/verify; MEDIUM if later installing dependencies or built packages.
- rollback/prevention: do not run makepkg as root; do not use `--skipchecksums` or `--skippgpcheck` as first-line repair.

## DRAFT-PKG-LOCALREPO-002 — local repo database repair preparation

```sh
repo_dir=/path/to/repo
repo_db="$repo_dir/custom.db.tar.zst"
ls -lh "$repo_dir"/*.pkg.tar.* 2>/dev/null
cp -a "$repo_db" "$repo_db.bak.$(date +%Y%m%d%H%M%S)" 2>/dev/null || true
repo-add -v --verify "$repo_db" "$repo_dir"/*.pkg.tar.*
```

- expected result: local repo database update or explicit signature/lock/package error.
- danger level: MEDIUM.
- rollback/prevention: keep db backup; do not operate on official mirror databases; verify repository path before running.

## DRAFT-PKG-DEPENDENCY-002 — dependency/dependent diagnosis

```sh
pkg=<package-name>
pactree "$pkg" 2>/dev/null || true
pactree -r "$pkg" 2>/dev/null || true
pacman -Qi "$pkg" 2>/dev/null || true
pacman -Qii "$pkg" 2>/dev/null || true
```

- expected result: dependency tree, reverse dependency tree and local package metadata visible.
- danger level: LOW.
- rollback/prevention: do not remove packages until reverse dependencies and explicit/orphan status are understood.

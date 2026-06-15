#!/usr/bin/env bash
# ============================================================
# DrDebug: Generic Safe Push Runner v0.0.2
# Deutscher Kommentar:
# Verallgemeinerte sichere Variante von kodiwulf-safe-push-runner.sh.
# User/Repo/Pfad werden abgefragt. Push nur bei sauberem Arbeitsbaum.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "Generic Safe Push Runner" "$@"; then
  drdebug_log "Prueft Repo, Remote, Branch und pusht nur bei sauberem Arbeitsbaum."
  exit 0
fi

drdebug_require_cmds git || exit 1

drdebug_prompt GITHUB_USER "GitHub Owner/User" "n-e-o-w-u-l-f"
drdebug_prompt REPO_NAME "Repository-Name" "kodiwulf-repo"
drdebug_prompt TARGET_DIR "Lokaler Repo-Pfad" "$HOME/Projekte/$GITHUB_USER/$REPO_NAME"
drdebug_prompt GIT_BRANCH "Branch" "main"
drdebug_prompt GIT_PROTOCOL "Protokoll: https oder ssh" "https"

case "$GIT_PROTOCOL" in
  ssh) REMOTE_URL="git@github.com:${GITHUB_USER}/${REPO_NAME}.git" ;;
  https|*) REMOTE_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git" ;;
esac

drdebug_header "Repo-Pruefung"
echo "Repo:   $TARGET_DIR"
echo "Remote: $REMOTE_URL"
echo "Branch: $GIT_BRANCH"

[ -d "$TARGET_DIR" ] || { drdebug_error "Zielrepo existiert nicht: $TARGET_DIR"; exit 10; }
cd "$TARGET_DIR" || exit 10
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || { drdebug_error "Kein Git-Repository."; exit 11; }

drdebug_header "Git Status"
git status --short --branch
if [ -n "$(git status --short)" ]; then
  drdebug_error "Arbeitsbaum ist nicht sauber. Es wird nichts gepusht."
  exit 12
fi

current_remote="$(git remote get-url origin 2>/dev/null || true)"
if [ "$current_remote" != "$REMOTE_URL" ]; then
  drdebug_warn "origin ist anders: $current_remote"
  if drdebug_confirm_exact "SET_PUSH_REMOTE"; then
    if git remote get-url origin >/dev/null 2>&1; then
      git remote set-url origin "$REMOTE_URL"
    else
      git remote add origin "$REMOTE_URL"
    fi
  else
    drdebug_warn "Remote nicht geaendert."
  fi
fi

current_branch="$(git branch --show-current)"
if [ "$current_branch" != "$GIT_BRANCH" ]; then
  drdebug_warn "Aktiver Branch ist $current_branch, Ziel ist $GIT_BRANCH."
  if drdebug_confirm_exact "CHECKOUT_PUSH_BRANCH"; then
    git checkout "$GIT_BRANCH"
  else
    exit 0
  fi
fi

drdebug_header "Letzte Commits"
git log --oneline --decorate --graph -5

if ! drdebug_confirm_exact "PUSH_REPO_NOW"; then
  drdebug_warn "Push abgebrochen."
  exit 0
fi

git push -u origin "$GIT_BRANCH"
status=$?
git status --short --branch
exit "$status"

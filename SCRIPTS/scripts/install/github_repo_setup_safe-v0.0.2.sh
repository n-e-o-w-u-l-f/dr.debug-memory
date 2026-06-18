#!/usr/bin/env bash
# ============================================================
# DrDebug: GitHub Repo Setup Safe v0.0.2
# Deutscher Kommentar:
# Konsolidiert beide 02_setup_github.sh Varianten.
# Keine hart codierte Repo-Pflicht: User/Repo/Pfad werden abgefragt.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "GitHub Repo Setup Safe" "$@"; then
  drdebug_log "Dieses Skript kann Git-Konfiguration setzen und ein Repository klonen/pullen."
  exit 0
fi

drdebug_require_cmds git || {
  drdebug_error "git fehlt. Installiere git bewusst ueber deinen Paketmanager und starte erneut."
  exit 1
}

default_user="${GITHUB_USER:-n-e-o-w-u-l-f}"
default_repo="${REPO_NAME:-dr.debug-memory}"
default_base="${PROJECTS_DIR:-$HOME/Projekte/$default_user}"

drdebug_prompt GITHUB_USER "GitHub Owner/User" "$default_user"
drdebug_prompt REPO_NAME "Repository-Name" "$default_repo"
drdebug_prompt PROJECTS_DIR "Lokaler Basisordner" "$default_base"
drdebug_prompt GIT_PROTOCOL "Protokoll: https oder ssh" "https"
drdebug_prompt GIT_BRANCH "Zielbranch fuer Pull/Checkout" "main"

drdebug_prompt GIT_AUTHOR_NAME "Optional git user.name leer lassen moeglich" ""
drdebug_prompt GIT_AUTHOR_EMAIL "Optional git user.email leer lassen moeglich" ""

case "$GIT_PROTOCOL" in
  ssh) REMOTE_URL="git@github.com:${GITHUB_USER}/${REPO_NAME}.git" ;;
  https|*) REMOTE_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git" ;;
esac

TARGET_DIR="${TARGET_DIR:-$PROJECTS_DIR/$REPO_NAME}"

drdebug_header "Geplantes GitHub Setup"
echo "Remote:     $REMOTE_URL"
echo "Zielordner: $TARGET_DIR"
echo "Branch:     $GIT_BRANCH"

if ! drdebug_confirm_exact "SETUP_GITHUB_REPO"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

mkdir -p "$PROJECTS_DIR"

if [ -n "$GIT_AUTHOR_NAME" ]; then
  git config --global user.name "$GIT_AUTHOR_NAME"
fi
if [ -n "$GIT_AUTHOR_EMAIL" ]; then
  git config --global user.email "$GIT_AUTHOR_EMAIL"
fi

if [ -d "$TARGET_DIR/.git" ]; then
  drdebug_log "Repository existiert bereits: $TARGET_DIR"
  cd "$TARGET_DIR" || exit 1
  current_remote="$(git remote get-url origin 2>/dev/null || true)"
  if [ "$current_remote" != "$REMOTE_URL" ]; then
    drdebug_warn "origin weicht ab: $current_remote"
    if drdebug_confirm_exact "CHANGE_GIT_ORIGIN"; then
      git remote set-url origin "$REMOTE_URL"
    fi
  fi
  git fetch origin --prune
  git checkout "$GIT_BRANCH" 2>/dev/null || git checkout -b "$GIT_BRANCH" "origin/$GIT_BRANCH" 2>/dev/null || true
  git pull --ff-only origin "$GIT_BRANCH" || drdebug_warn "Pull nicht moeglich; bitte Status pruefen."
else
  git clone "$REMOTE_URL" "$TARGET_DIR"
  cd "$TARGET_DIR" || exit 1
  git checkout "$GIT_BRANCH" 2>/dev/null || true
fi

drdebug_header "Git Status"
git status --short --branch

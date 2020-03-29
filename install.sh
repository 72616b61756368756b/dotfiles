#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source $DIR/.files/system/echos.sh
SOURCE="https://github.com/rakauchuk/dotfiles"
TARBALL="$SOURCE/tarball/master"
TARGET="$HOME/.dotfiles"
TAR_CMD="tar -xzv -C "$TARGET" --strip-components=1 --exclude='{.gitignore}'"
[[ -d "$TARGET" ]] && rm -rf $TARGET
_exists() {
  type "$1" >/dev/null 2>&1
}
if _exists "git"; then
  CMD="git clone $SOURCE $TARGET"
elif _exists "curl"; then
  CMD="curl -#L $TARBALL | $TAR_CMD"
elif _exists "wget"; then
  CMD="wget --no-check-certificate -O - $TARBALL | $TAR_CMD"
fi
if [[ -z "$CMD" ]]; then
  error "Error occurs, aborting..."
else
  running "Installing..."
  mkdir -p "$TARGET"
  eval "$CMD"
  print_result $? 'Done'
fi

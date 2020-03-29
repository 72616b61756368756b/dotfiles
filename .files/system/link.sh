#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source $DIR/echos.sh

TARGET="$HOME/.dotfiles"
if [[ ! -d "$TARGET" ]]; then
  error "$TARGET does not exist."
  exit 1
fi
for location in $(find $TARGET/.files -name '.*'); do
  file="${location##*/}"
  file="${file%.sh}"
  if [[ -f "$TARGET/.files/$file" ]]; then
    ok "Linking '$TARGET/.files/$file' to '$HOME/$file'"
    rm -f "$HOME/$file"
    ln -s "$TARGET/.files/$file" "$HOME/$file"
  fi
done

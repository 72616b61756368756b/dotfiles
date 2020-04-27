#!/usr/bin/env bash

set -euo pipefail

IFS=$'\n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
TARGET="${1:-}"
DOTFILES=$(find ${TARGET}/ -type f -name '.*' -not -name .DS_Store -not -name .git -not -name .gitignore -not -name .dotfiles | sed -e 's|//|/|' | sed -e 's|./.|.|')

source $DIR/utils.sh
source $DIR/logger.sh

_sudo
/bin/bash $DIR/backup.sh "${TARGET}" "${DOTFILES}"
/bin/bash $DIR/link.sh "${TARGET}" "${DOTFILES}"

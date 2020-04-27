#!/usr/bin/env bash

set -euo pipefail

IFS=$'\n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
TARGET="${1:-}"
DOTFILES="${2:-}"

source ${DIR}/utils.sh
source ${DIR}/logger.sh

if [[ ! -d "$TARGET" ]]; then
    error "$TARGET does not exist."
    exit 1
fi
for location in $DOTFILES; do
    file="${location##*/}"
    file="${file%.sh}"
    sourceFile="${TARGET}/${file}"
    targetFile="$HOME/$file"
    if [[ -f "${sourceFile}" ]]; then
        read -r -p "Linking '$sourceFile' to '$targetFile'? [y|N] " response
        if [[ $response =~ (y|yes|Y) ]]; then
            _info "Linking '$sourceFile' to '$targetFile'"
            if [[ "$(readlink "$targetFile")" != "$sourceFile" ]]; then
                _yesno "'$targetFile' already exists, do you want to overwrite it?"
                if _yes; then
                    rm -f "$targetFile"
                    ln -s "$sourceFile" "$targetFile" || true
                    _print_result $? "$targetFile → $sourceFile"
                else
                    _error "$targetFile → $sourceFile"
                fi
            else
                # ln -s "$sourceFile" "$targetFile"
                _print_result $? "$targetFile → $sourceFile"
            fi
        fi
    fi
done
unset location

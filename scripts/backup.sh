#!/usr/bin/env bash

set -euo pipefail

IFS=$'\n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
TARGET="${1:-}"
DOTFILES="${2:-}"

source $DIR/utils.sh
source $DIR/logger.sh

now=$(_utc_date)
backup="${TARGET}_backup"
mkdir -p $backup/$now
for location in $DOTFILES; do
    file="${location##*/}"
    file="${file%.sh}"
    sourceFile="${TARGET}/${file}"
    targetFile="${HOME}/${file}"
    backupFile="${backup}/${now}/${file}"
    if [[ -f "${sourceFile}" && -f "${targetFile}" ]]; then
        _info "Backing up '${targetFile}'..."
        if [[ -L "${targetFile}" ]]; then
            cp $(readlink "${targetFile}") $backupFile
        else
            cp $targetFile $backupFile
        fi
        _info "Backup is located at '${backupFile}'"
    fi
done
unset location

#!/usr/bin/env bash

set -euo pipefail

IFS=$'\n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
TARGET="${1:-}"
DOTFILES="${2:-}"
HOSTS=/etc/hosts
START_LINE='###> unified hosts ###'
END_LINE='###< unified hosts ###'

source $DIR/utils.sh
source $DIR/logger.sh

CMD="curl -fsSL https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts --output ${DIR}/hosts --silent"
eval "${CMD}"

_print_result $? " The hosts file has been downloaded."

read -r -p "Would you like to backup your hosts file? [y|N] " response
if [[ $response =~ (y|yes|Y) ]]; then
    now=$(_utc_date)
    mkdir -p "${TARGET}_backup/${now}"
    backupFile="${TARGET}_backup/${now}/hosts"
    sudo cp $HOSTS $backupFile
    _print_result $? " The backup file of /etc/hosts is located at '${backupFile}'"
fi

read -r -p "Append /etc/hosts with the ad-blocking hosts file? (from ${DIR}/hosts file) [y|N] " response
if [[ $response =~ (yes|y|Y) ]]; then
    REMOVED_START_LINE=$(grep -n $START_LINE $HOSTS | cut -d':' -f1) || true
    REMOVED_END_LINE=$(grep -n $END_LINE $HOSTS | cut -d':' -f1) || true
    if [[ ! -z "$REMOVED_START_LINE" ]] && [[ ! -z "$REMOVED_END_LINE" ]]; then
        awk "NR < $REMOVED_START_LINE || NR > $REMOVED_END_LINE" $HOSTS | sudo tee $HOSTS
        _print_result $? " $HOSTS file has been cleared."
    fi
    echo $START_LINE | sudo tee -a $HOSTS
    cat $DIR/hosts | sed '/^$/N;/^\n$/D' | sudo tee -a $HOSTS
    echo $END_LINE | sudo tee -a $HOSTS
    _print_result $? "Your /etc/hosts file has been updated."
else
    _info "skipped"
fi

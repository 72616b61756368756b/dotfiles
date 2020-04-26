#!/usr/bin/env bash

set -euo pipefail

IFS=$'\n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

source $DIR/logger.sh

_sudo() {
    sudo -v
    while true; do
        sudo -n true
        sleep 60
        kill -0 "$$" || exit
    done 2>/dev/null &
}

_ask() {
    _info "$1"
    read
}

_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] && return 0 || return 1
}

_yesno() {
    _info "$1 (y/n) "
    read -n 1
    printf "\n"
}

_exists() {
    type "$1" >/dev/null 2>&1
}

_time() {
    date -u "+%s"
}

_utc_date() {
    date -u "+%Y-%m-%d %H:%M:%S"
}

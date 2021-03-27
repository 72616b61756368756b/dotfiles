#!/usr/bin/env bash

set -euo pipefail

IFS=$'\n\t'

ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_MAGENTA=$ESC_SEQ"35;01m"
COL_CYAN=$ESC_SEQ"36;01m"

function _emergency() {
    echo -e "$COL_RED[emergency]$COL_RESET "$1
}

function _alert() {
    echo -e "$COL_RED[alert]$COL_RESET "$1
}

function _critical() {
    echo -e "$COL_RED[critical]$COL_RESET "$1
}

function _error() {
    echo -e "$COL_RED[error]$COL_RESET "$1
}

function _warning() {
    echo -e "$COL_MAGENTA[warning]$COL_RESET "$1
}

function _notice() {
    echo -e "$COL_YELLOW[notice]$COL_RESET "$1
}

function _info() {
    echo -e "$COL_CYAN[info]$COL_RESET "$1
}

function _debug() {
    echo -e "$COL_GREEN[debug]$COL_RESET "$1
}

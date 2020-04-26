#!/usr/bin/env bash

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

if [[ -n "$BASH_VERSION" ]]; then
  if [[ -f "$HOME/.bashrc" ]]; then
    source "$HOME/.bashrc"
  fi
fi
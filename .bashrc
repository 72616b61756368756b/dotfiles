#!/usr/bin/env bash

# Personal aliases and functions.

# Personal environment variables and startup programs should go in
# ~/.bash_profile.  System wide environment variables and startup
# programs are in /etc/profile.  System wide aliases and functions are
# in /etc/bashrc.

if [ -f "/etc/bashrc" ]; then
  source /etc/bashrc
fi

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
# The history list is appended to the history file when the shell exits, rather than overwriting the history file.
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# autocorrect typos in path names when using the `cd` command
shopt -s cdspell

# save all lines of a multiple-line command in the same history entry
shopt -s cmdhist

# include filenames beginning with a "." in the filename expansion
shopt -s dotglob

# use extended pattern matching features
shopt -s extglob

# do not attempt to search the PATH for possible completions when
# completion is attempted on an empty line
shopt -s no_empty_cmd_completion

# match filenames in a case-insensitive# fashion when performing
# filename expansion
shopt -s nocaseglob

# recursive globbing with "**"
if [ ${BASH_VERSINFO[0]} -ge 4 ]; then
  shopt -s globstar
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
if [[ -f "$HOME/.bash_aliases" ]]; then source $HOME/.bash_aliases; fi

if [[ -f "$HOME/.dotfiles/scripts/include/exports.sh" ]]; then
  source $HOME/.dotfiles/scripts/include/exports.sh
fi

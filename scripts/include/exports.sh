#!/usr/bin/env bash

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad

export EDITOR='vim'

# Ignore commands that start with spaces and duplicates
export HISTCONTROL=ignoreboth # ignoredups:erasedups

# Increase the maximum number of lines of history
# persisted in the Bash history file (default value is 500)
export HISTFILESIZE=10000

# Don't add certain commands to the history file
export HISTIGNORE='&:[bf]g:c:clear:history:exit:q:pwd:* --help'

# Increase the maximum number of commands recorded in the
# command history (default value is 500)
export HISTSIZE=10000

# Prefer US English and use UTF-8 encoding
export LANG='en_US'
export LC_ALL='en_US.UTF-8'

# Use custom `less` colors for man pages
# https://www.gnu.org/software/termutils/manual/termutils-2.0/html_chapter/tput_1.html
export LESS_TERMCAP_md=$'\E[1;32m' # begin bold mode
export LESS_TERMCAP_me=$'\E[0m'    # end bold mode
#export LESS_TERMCAP_us=$'\E[4;32m'   # begin underscore mode
#export LESS_TERMCAP_ue=$'\E[0m'      # end underscore mode

# Don't clear the screen after quitting a man page
export MANPAGER='less -X'

# Increase the maximum number of lines of history persisted
# in the `Node` REPL history file (default value is 1000)
# https://github.com/nodejs/node/blob/a85f4b5ce5791caf8caa9b31970313c6183a5499/doc/api/repl.markdown#persistent-history
export NODE_REPL_HISTORY_SIZE=10000

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY="~/.node_history"
# Allow 32³ entries; the default is 1000.
export NODE_REPL_HISTORY_SIZE="32768"
# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE="sloppy"

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history
# export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PHP_IDE_CONFIG="serverName=localhost"
export XDEBUG_CONFIG="remote_enable=1 remote_mode=req remote_port=9000 remote_host=127.0.0.1 remote_connect_back=0"

if [[ -d "$HOME/bin" ]]; then
  PATH="$HOME/bin:$PATH"
fi

if [[ -d "$HOME/.composer/vendor/bin" ]]; then
  export PATH="$HOME/.composer/vendor/bin:$PATH"
fi

PATH=$(echo -n $PATH | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}')
export PATH

#!/usr/bin/env bash

export BLOCKSIZE=1k # set default blocksize for ls, df, du
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
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

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history
# export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export ARCHFLAGS="-arch x86_64"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

if [[ -d "$HOME/.composer/vendor/bin" ]]; then
    export PATH="$HOME/.composer/vendor/bin:$PATH"
fi

if [[ -d "$HOME/bin" ]]; then
    export PATH="$HOME/bin:$PATH"
fi

if [[ -d "/usr/local/sbin" ]]; then
    export PATH="/usr/local/sbin:$PATH"
fi

if [[ -e /usr/local/go/bin ]]; then
  export PATH="/usr/local/go/bin:$PATH"
fi

if command -v go &> /dev/null; then
  if [[ -e $(go env GOPATH) ]]; then
    export GOPATH=$(go env GOPATH)
  fi
  if [[ -e $(go env GOPATH)/bin ]]; then
    export PATH="$(go env GOPATH)/bin:$PATH"
  fi
fi

PATH=$(echo -n $PATH | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}')
export PATH

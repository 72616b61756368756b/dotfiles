#!/usr/bin/env bash

alias -- -='cd -' # go to previous dir with -
alias ~='cd ~'    # `cd` is probably faster to type though
alias ...=../..
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..
alias cd.='cd $(readlink -f .)' # go to real dir (i.e. if current dir is linked)
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd......='cd ../../../../..'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias 1mb='mkfile 1m ./1.mb' # creates a file of 1mb size (all zeros)
alias 5mb='mkfile 5m ./5.mb'
alias 10mb='mkfile 10m ./10.mb'
alias 100mb='mkfile 100m ./100.mb'
alias CA='2>&1 | cat -A'
alias G='| grep'
alias H='| head'
alias L='| less'
alias LL='2>&1 | less'
alias M='| most'
alias NE='2> /dev/null'
alias NUL='> /dev/null 2>&1'
alias P='2>&1| pygmentize -l pytb'
alias T='| tail'
alias _='sudo '
alias afind='ack -il'
alias aliases="alias | sed 's/=.*//'"
alias bashrc='${=EDITOR} ~/.bashrc'
alias c='clear'
alias cl='clear'
alias cp='cp -iv' # preferred 'cp' implementation
alias date_iso_8601='date "+%Y%m%dT%H%M%S"'
alias date_clean='date "+%Y-%m-%d"'
alias date_year='date "+%Y"'
alias date_month='date "+%m"'
alias date_week='date "+%V"'
alias date_day='date "+%d"'
alias date_hour='date "+%H"'
alias date_minute='date "+%M"'
alias date_second='date "+%S"'
alias date_time='date -u "+%s"' # 'date "+%H:%M:%S"'
alias date_utc='date -u "+%Y-%m-%d %H:%M:%S"'
alias dmesg='dmesg -T'
alias df='df -h'
alias du='du -h -d 2'
alias dud='du -d 1 -h'
alias duf='du -sh *'
alias ebuild='nocorrect ebuild'
alias egrep='egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fd='find . -type d -name'
alias ff='find . -type f -name'
alias fgrep='fgrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias gist='nocorrect gist'
alias git-pull-tree='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;\n'
alias globurl='noglob urlglobber '
alias grep='grep --color=auto'
alias gz='tar -zcvf'
alias h=history
alias help=man
alias heroku='nocorrect heroku'
alias hgrep='fc -El 0 | grep'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias history=omz_history
alias hosts='sudo ${=EDITOR} /etc/hosts'
alias hpodder='nocorrect hpodder'
alias hs='history | grep'
alias hsi='history | grep -i'
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'" # show active network interfaces
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"                     # public facing IP Address
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias json="json -c"
alias l='ls -lFh'
alias lS='ls -1FSsh'
alias la='ls -lAFh'
alias lart='ls -1Fcart'
alias ldot='ls -ld .*'
alias ll='ls -l'
alias ln='ln -iv'
alias lh='ls -alt | head' # see the last modified files
alias lr='ls -tRFh'
alias lrt='ls -1Fcrt'
alias ls='ls -G'
alias lsa='ls -lah'
alias lt='ls -ltFh'
alias less='less -FSRXc'                          # preferred 'less' implementation // less -r
alias lsock='sudo /usr/sbin/lsof -i -P'           # display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP' # display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP' # display only open TCP sockets
alias make='make'                                 #  --debug=b
alias man='nocorrect man'
alias md='mkdir -p'
alias mkdir='nocorrect mkdir'
alias mkdir='mkdir -pv' # preferred 'mkdir' implementation
alias mv='mv -iv'       # preferred 'mv' implementation
alias mysql='nocorrect mysql'
alias ofd='open_command $PWD'
alias openPorts='sudo lsof -i | grep LISTEN' # openPorts:    All listening connections
alias p='ps -f'
alias path='echo -e ${PATH//:/\\n}' # print each PATH entry on a separate line
alias ping='ping -c 5'              # stop after sending count ECHO_REQUEST packets
alias quit='exit'
alias reload!='. ~/.zshrc'
alias rd=rmdir
alias rm='rm -i'
alias rmf='rm -rf'
alias rsync="rsync -vh"
alias run-help=man
alias screen='TERM=screen screen'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias sortnr='sort -n -r'
alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"
alias sudo='nocorrect sudo ' # enable alias expansion for sudo
alias root='sudo su'
alias t='tail -f'
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias tkss='tmux kill-session -t'
alias tksv='tmux kill-server'
alias tl='tmux list-sessions'
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias tmux=_zsh_tmux_plugin_run
alias ts='tmux new-session -s'
alias ttop="top -R -F -s 10 -o rsize"
alias txl='tmuxinator list'
alias txn='tmuxinator new'
alias txo='tmuxinator open'
alias txs='tmuxinator start'
alias unexport=unset
alias v='vim'
alias vi='vim'
alias vim='nvim'
alias vimrc='${=EDITOR} ~/.vimrc'
alias which-command=whence
alias x=extract
alias xoff='sudo phpdismod -s cli xdebug'
alias xon='sudo phpenmod -s cli xdebug'
alias zshrc='${=EDITOR} ~/.zshrc'
alias :q='exit'
alias asciicast2gif='docker run -it --rm -v $(pwd):/ asciinema/asciicast2gif'

xphp() {
	(php -m | grep -q xdebug)
	if [[ $? -eq 0 ]]; then
		XDEBUG_ENABLED=true
	else
		XDEBUG_ENABLED=false
	fi
	if ! $XDEBUG_ENABLED; then xon; fi
	HOST_IP=$(last --limit=1 | grep -oP '\d+(\.\d+){3}')
	php \
		-dxdebug.remote_host=${HOST_IP} \
		-dxdebug.remote_autostart=1 \
		"$@"
	if ! $XDEBUG_ENABLED; then xoff; fi
}

if [[ "$SSH_AUTH_SOCK" != "" ]] && [[ -f ~/.ssh/id_rsa ]] && [[ -x /usr/bin/ssh-add ]]; then
	ssh-add -l >/dev/null || alias ssh='(ssh-add -l >/dev/null || ssh-add) && unalias ssh; ssh'
fi

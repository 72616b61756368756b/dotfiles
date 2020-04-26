#!/usr/bin/env bash

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"                  # `cd` is probably faster to type though
alias -- -="cd -"               # go to previous dir with -
alias cd.='cd $(readlink -f .)' # go to real dir (i.e. if current dir is linked)
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'

alias sudo='sudo ' # enable alias expansion for sudo
alias root='sudo su'
alias _=sudo

alias aliases="alias | sed 's/=.*//'"
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias paths='echo -e ${PATH//:/\\n}'

alias l='ls -lah'

alias make='make --debug=b'
alias ping='ping -c 8'

alias dmesg='dmesg -T'

alias ping='ping -c 5'            # stop after sending count ECHO_REQUEST packets
alias fastping='ping -c 100 -s.2' # Do not wait interval 1 second, go fast
alias ports='netstat -tulanp'

# quick edit
alias vim='nvim'
alias v='vim'
alias vi='vim'
alias zshrc="vim ~/.zshrc"
alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias hosts="sudo $EDITOR /etc/hosts"
alias :q='exit'

alias help='man'
alias quit='exit'
alias reload!='. ~/.zshrc'
alias g="git"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'

# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

# get web server headers #
alias header='curl -I'

# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get week number
alias week='date +%V'

# date
alias date_iso_8601='date "+%Y%m%dT%H%M%S"'
alias date_clean='date "+%Y-%m-%d"'
alias date_year='date "+%Y"'
alias date_month='date "+%m"'
alias date_week='date "+%V"'
alias date_day='date "+%d"'
alias date_hour='date "+%H"'
alias date_minute='date "+%M"'
alias date_second='date "+%S"'
alias date_time='date "+%H:%M:%S"'

# stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'
alias ka9='killall -9'
alias k9='kill -9'

# ----------
alias ls='ls -Fh --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias l='ls -l'
alias la='ls -lA'
alias lr='ls -R'
alias lf='ls -l | grep "^-"'
alias l.f='ls -ld .* | grep "^-"'
alias ld='ls -l | grep "^d"'
alias l.d='ls -ld .* | grep "^d"'
# ----------

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

if [[ $(uname -s) == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $(uname -s) == 'Darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

alias h='history'
alias rsync="rsync -vh"
alias json="json -c"
alias psgrep="psgrep -i"

# confirmations
alias cp='cp -iv'
alias mv='mv -iv'
alias ln='ln -iv'
alias mkdir='mkdir -v'
alias rm='rm -i'
alias rmf='rm -rf'

# containered aliases
alias ffmpeg='docker run -it --rm -v $(pwd):/tmp -w /tmp jrottenberg/ffmpeg'
alias asciicast2gif='docker run -it --rm -v $(pwd):/tmp -w /tmp asciinema/asciicast2gif'
alias netshoot='docker run -it --rm --privileged --net host -v /var/run/docker.sock:/var/run/docker.sock nicolaka/netshoot'

git config --global alias.adog "log --all --decorate --oneline --graph"
alias git-pull-tree='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;\n'

#-------------------------------

alias tree="tree -A"
alias treed="tree -d"
alias tree1="tree -d -L 1"
alias tree2="tree -d -L 2"

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"
alias grip="grip -b"

#-------------------------------

# if [[ "$SSH_AUTH_SOCK" != "" ]] && [[ -f ~/.ssh/id_rsa ]] && [[ -x /usr/bin/ssh-add ]]; then
#   ssh-add -l >/dev/null || alias ssh='(ssh-add -l >/dev/null || ssh-add) && unalias ssh; ssh'
# fi

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"


# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#   fi
# }

alias cp='cp -iv'       # Preferred 'cp' implementation
alias mv='mv -iv'       # Preferred 'mv' implementation
alias mkdir='mkdir -pv' # Preferred 'mkdir' implementation
#alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'    # Preferred 'less' implementation
alias f='open -a Finder ./' # f:            Opens current directory in MacOS Finder
alias ~="cd ~"              # ~:            Go Home
alias c='clear'             # c:            Clear terminal display
#alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'       # path:         Echo all executable Paths
alias show_options='shopt'                # Show_options: display bash options settings
alias fix_stty='stty sane'                # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On' # cic:          Make tab-completion case-insensitive

alias DT='tee ~/Desktop/terminalOut.txt' # DT:           Pipe content to file on MacOS Desktop

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias numFiles='echo $(ls -1 | wc -l)' # numFiles:     Count of non-hidden files in current dir
alias make1mb='mkfile 1m ./1MB.dat'    # make1mb:      Creates a file of 1mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'    # make5mb:      Creates a file of 5mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat' # make10mb:     Creates a file of 10mb size (all zeros)

#   ---------------------------
#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
alias topForever='top -l 9999999 -s 10 -o cpu'

#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
alias ttop="top -R -F -s 10 -o rsize"

#   ---------------------------

alias myip='curl ip.appspot.com'                  # myip:         Public facing IP Address
alias netCons='lsof -i'                           # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'          # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'           # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP' # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP' # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'            # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'            # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'      # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                # showBlocked:  All ipfw rules inc/ blocked IPs

#   ---------------------------------------
alias hosts='sudo $EDITOR /private/etc/hosts'
alias xoff='sudo phpdismod -s cli xdebug'
alias xon='sudo phpenmod -s cli xdebug'
function xphp() {
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

if [[ $(uname -s) == "Darwin" ]]; then
  alias cpwd="pwd|tr -d '\n'|pbcopy"
  # Shortcuts
  alias cask="brew cask"
  alias chrome="open -a ~/Applications/Google\ Chrome.app"
  alias canary="open -a ~/Applications/Google\ Chrome\ Canary.app"
  alias firefox="open -a ~/Applications/Firefox.app"
  # Exclude macOS specific files in ZIP archives
  alias zip="zip -x *.DS_Store -x *__MACOSX* -x *.AppleDouble*"
  alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app"
  alias flushdns="dscacheutil -flushcache && killall -HUP mDNSResponder"
  alias afk="open /System/Library/CoreServices/ScreenSaverEngine.app"
  alias logoff="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
  # Recursively remove Apple meta files
  alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"
  alias cleanupad="find . -type d -name '.AppleD*' -ls -exec /bin/rm -r {} \;"
  # Clean up LaunchServices to remove duplicates in the "Open With" menu
  alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
  # Empty trash on mounted volumes and main HDD, and clear system logs
  alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
  # Recursively delete `.DS_Store` files
  alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
  # Empty the Trash on all mounted volumes and the main HDD.
  # Also, clear Apple’s System Logs to improve shell startup speed.
  # Finally, clear download history from quarantine. https://mths.be/bum
  alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
  # Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
  alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'
  # Reload native apps
  alias killfinder="killall Finder"
  alias killdock="killall Dock"
  alias killmenubar="killall SystemUIServer NotificationCenter"
  alias killos="killfinder && killdock && killmenubar"
  # Kill all the tabs in Chrome to free up memory
  alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"
  # Show system information
  alias displays="system_profiler SPDisplaysDataType"
  alias cpu="sysctl -n machdep.cpu.brand_string"
  alias pbtext="pbpaste | textutil -convert txt -stdin -stdout -encoding 30 | pbcopy"
  alias pbspaces="pbpaste | expand | pbcopy"
  # macOS has no `md5sum`, so use `md5` as a fallback
  command -v md5sum >/dev/null || alias md5sum="md5"
  # macOS has no `sha1sum`, so use `shasum` as a fallback
  command -v sha1sum >/dev/null || alias sha1sum="shasum"
  # Canonical hex dump; some systems have this symlinked
  command -v hd >/dev/null || alias hd="hexdump -C"
  # OS X has no `md5sum`, so use `md5` as a fallback
  command -v md5sum >/dev/null || alias md5sum="md5"
  # OS X has no `sha1sum`, so use `shasum` as a fallback
  command -v sha1sum >/dev/null || alias sha1sum="shasum"
  # here's LS_COLORS
  # github.com/trapd00r/LS_COLORS
  command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
  eval "$(gdircolors -b ~/.dircolors)"



  alias mountReadWrite='/sbin/mount -uw /' # mountReadWrite:   For use when booted into single-user

  #   cleanupDS:  Recursively delete .DS_Store files
  #   -------------------------------------------------------------------
  alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

  #   finderShowHidden:   Show hidden files in Finder
  #   finderHideHidden:   Hide hidden files in Finder
  #   -------------------------------------------------------------------
  alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
  alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

  #   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
  #   -----------------------------------------------------------------------------------
  alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

  #    screensaverDesktop: Run a screensaver on the Desktop
  #   -----------------------------------------------------------------------------------
  alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

  alias battery='ioreg -w0 -l | grep Capacity | cut -d " " -f 17-50'
fi

# Download a web page and show info on what took time
httpDebug() { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n"; }
# Grabs headers from web page
httpHeaders() { /usr/bin/curl -I -L $@; }

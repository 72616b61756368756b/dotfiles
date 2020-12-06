# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  # | Command                 | Description                                         |
  # | :-----------------------| :-------------------------------------------------- |
  command-not-found
  common-aliases
  iterm2
  history
  osx
  # | `tab`                   | Open the current directory in a new tab             |
  # | `split_tab`             | Split the current terminal tab horizontally         |
  # | `vsplit_tab`            | Split the current terminal tab vertically           |
  # | `ofd`                   | Open the current directory in a Finder window       |
  # | `pfd`                   | Return the path of the frontmost Finder window      |
  # | `pfs`                   | Return the current Finder selection                 |
  # | `cdf`                   | `cd` to the current Finder directory                |
  # | `pushdf`                | `pushd` to the current Finder directory             |
  # | `quick-look`            | Quick-Look a specified file                         |
  # | `man-preview`           | Open a specified man page in Preview app            |
  # | `showfiles`             | Show hidden files                                   |
  # | `hidefiles`             | Hide the hidden files                               |
  # | `itunes`                | Control iTunes. Use `itunes -h` for usage details   |
  # | `spotify`               | Control Spotify and search by artist, album, track… |
  # | `rmdsstore`             | Remove .DS\_Store files recursively in a directory  |
  extract
  # | `extract <filename>`    | Extracts the archive file you pass it               |
  docker
  tmux
  # ZSH_TMUX_AUTOSTART='true'             # Automatically starts tmux (default: false)
  # ZSH_TMUX_AUTOSTART_ONCE               # Autostart only if tmux hasn't been started previously (default: true)
  # ZSH_TMUX_AUTOCONNECT                  # Automatically connect to a previous session if it exits (default: true)
  # ZSH_TMUX_AUTOQUIT                     # Automatically closes terminal once tmux exits (default: ZSH_TMUX_AUTOSTART)
  # ZSH_TMUX_FIXTERM                      # Sets $TERM to 256-color term or not based on current terminal support
  # ZSH_TMUX_ITERM2                       # Sets the -CC option for iTerm2 tmux integration (default: false)
  # ZSH_TMUX_FIXTERM_WITHOUT_256COLOR     # $TERM to use for non 256-color terminals (default: screen)
  # ZSH_TMUX_FIXTERM_WITH_256COLOR        # $TERM to use for 256-color terminals (default: screen-256color
  zsh-completions # git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
  zsh-autosuggestions # git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  zsh-syntax-highlighting # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
SCRIPTS_PATH=$HOME/.dotfiles/scripts/include
if [[ -f "$SCRIPTS_PATH/aliases.sh" ]]; then
  source $SCRIPTS_PATH/aliases.sh
fi
if [[ -f "$SCRIPTS_PATH/exports.sh" ]]; then
  source $SCRIPTS_PATH/exports.sh
fi

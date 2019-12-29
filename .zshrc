# User configuration {{{

export PATH="$PATH:/home/gideon/.local/bin"

# Theme
ZSH_THEME="flazz"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# }}}
# Aliases {{{

# Protontricks
alias protontricks-flat='flatpak run --env=WINETRICKS=/home/gideon/winetricks --env=STEAM_RUNTIME=0 --command=.local/bin/protontricks com.valvesoftware.Steam'

# Pacman
alias pasyu="sudo pacman -Syu"
alias pas="sudo pacman -S"

# Point vi and vim to nvim
alias vi="nvim"
alias vim="nvim"

# Quick edit .zshrc
alias vizsh="vi ~/.zshrc"
alias srczsh="source ~/.zshrc"

# Git aliases
alias gct="git commit"
alias gcl="git clone"
alias gst="git status"
alias gdf="git diff"
alias ga="git add"
alias gbr="git branch"
alias gpl="git pull"
alias gph="git push"
alias gch="git checkout"

# }}}
# Plugins {{{
plugins=(
  archlinux
  pip
  python
  postgres
  tmux
  vi-mode
  zsh-syntax-highlighting
)

# Fuzzy
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# }}}
# More settings {{{

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Path to your oh-my-zsh installation.
export ZSH="/home/gideon/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# }}}

[[ $- != *i* ]] && return
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
unsetopt beep nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gideon/.zshrc'
set bell-style visible


alias ls='ls --color=auto'
alias ll='ls -la'
autoload -Uz promptinit
promptinit
prompt suse
autoload -Uz compinit
compinit
#autoload -Uz compinit
# End of lines added by compinstall

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh    

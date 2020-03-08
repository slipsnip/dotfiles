# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob notify
unsetopt beep
bindkey -v

# use pywal for theming terminal
(cat ~/.cache/wal/sequences &)

autoload -U promptinit; promptinit
prompt spaceship

alias vim=nvim
alias config='/usr/bin/git --git-dir=/home/wurst/dotfiles --work-tree=/home/wurst'
alias apt='sudo apt'

export PATH=$HOME/.local/bin:$PATH
export EDITOR=$HOME/.local/bin/vis

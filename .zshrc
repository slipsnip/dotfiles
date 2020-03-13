fpath+=$HOME/.zsh/pure
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# set options
unsetopt beep
bindkey -v

autoload -U promptinit; promptinit
prompt pure

# use pywal for theming terminal
(cat ~/.cache/wal/sequences &)

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

alias config='/usr/bin/git --git-dir=/home/wurst/dotfiles --work-tree=/home/wurst'
alias apt='sudo apt'
alias replua='rep.lua'
alias emacs='emacs -nw'

export PATH=$HOME/.local/bin:$HOME/.luarocks/bin:$HOME/.emacs.d/bin:$PATH
export EDITOR=kak
export VISUAL=kak

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

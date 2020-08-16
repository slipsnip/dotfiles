fpath+=$HOME/.zsh/pure
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# options
unsetopt beep
setopt extended_glob
bindkey -v

# pure prompt git@github.com:sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# completion
autoload -Uz compinit; compinit
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

# aliases
alias config='/usr/bin/git --git-dir=/home/wurst/.dotfiles --work-tree=/home/wurst'
alias lsd='exa --long'
alias tmux='tmux -2'
alias st="tabbed -r 2 st -w ''"
alias hc='herbstclient'
alias nnn='nnn -c'

# rice
zle -N neo{,}
bindkey '^n' neo

# for nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# https://sidneyliebrand.io/blog/combining-caniuse-with-fzf
# gem install cani (ruby)
cani() {
  local feats=$(~/.local/bin/ciu | sort -rn | fzf -m --ansi | sed -e 's/^.*%\ *//g' | sed -e 's/   .*//g')

  if [[ $feats ]]; then
    for feat in $(echo $feats)
    do caniuse $feat
    done
  fi
}

# source given file otherwise if no argument use fzf to find hidden file to source
s() {
        if [[ -n $1 ]]
        then
                source $1
        else
                source `rg --files --hidden | fzf`
        fi
}

neo() {
        neofetch
        zle redisplay
}

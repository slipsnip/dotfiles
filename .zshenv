# environment
export PATH=$HOME/.local/bin:$HOME/.luarocks/bin:$PATH
export EDITOR=vim
export VISUAL=vim
export TERMINAL=st-tabbed
export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPS="--extended --preview='bat'"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export SVDIR=$HOME/runit/service
source $HOME/.ssh/ssh-agent-env

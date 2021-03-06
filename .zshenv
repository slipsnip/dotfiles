# environment
export PATH=$HOME/.local/bin:$HOME/.emacs.d/bin:$HOME/.luarocks/bin:$PATH
export EDITOR=nvim
export TERMINAL=alacritty
export VISUAL="alacritty -e nvim"
# export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPS="--extended --preview='bat'"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export SVDIR=$HOME/runit/service
export NNN_COLORS='1267'
export NNN_OPENER=nuke

# temp devel stuff for project
export SECRET_KEY="ay21jhnkdo%&r0(5&w%_c511u%_h03ip6b2z2s:oduY2358sdlk57w843seu45yl3w64lawtuyrasyrliowe68#&j*%%g7qwzuc"
export DATABASE_URL=postgres://wurst


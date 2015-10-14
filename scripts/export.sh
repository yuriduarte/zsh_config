PATH=/usr/local/heroku/bin:$PATH
export PATH=$PATH

export EDITOR="nano"

export HISTCONTROL=ignoredups
export HISTFILESIZE=1000000
export HISTIGNORE="history"
export HISTSIZE=${HISTFILESIZE}

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

export LESS_TERMCAP_mb=$'\E[04;33m'
export LESS_TERMCAP_md=$'\E[04;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[00;32m'

# Exports vars of Docker
eval "$(docker-machine env docker)"

# brew/cask
export HOMEBREW_CASK_OPTS="--caskroom=/Application"

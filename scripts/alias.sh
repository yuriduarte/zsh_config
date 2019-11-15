alias ll="ls -Glahs"
alias ls="/bin/ls -G"
alias psgrep="ps aux | egrep -v egrep | egrep"

# alias edit="emacs"
function edit() {
  emacs $1 &
}

# alias edit="mvim"

alias editzsh="edit ~/.zsh.d/"
alias goemacs="cd ~/.emacs.d/"
alias editemacs="edit ~/.emacs.d/"

# Elixir
alias mt="mix test"
alias mts="mix test --stale"
alias mtd="mix test.debug"
alias mta="mix test.all"
alias mtf="mix test.feature"
alias mtds="mix test.debug --stale"
alias mps="mix phx.server"
alias mpr="mix phx.routes"
alias mted="MIX_ENV=test mix ecto.drop"
alias mdg="mix deps.get"

# Ruby
alias be="bundle exec"
alias rails="be rails"
alias rake="be rake"
alias rdm="rake db:migrate"
alias rdc="rake db:create"
alias rs="rails s -b 0.0.0.0"
alias sidekiq="be sidekiq"

# GIT
alias gs="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gm="git merge --no-ff"
alias gp="git push -u && git push --tags"
alias gpm="git push origin master"
alias gf="git fetch origin -p"
alias glog="git log --graph"
alias gpr="git pull --rebase"
alias gc="git checkout"
alias gcm="git checkout master"
alias gcd="git checkout develop"

function gcf() {
  git checkout feature/$1
}

alias gffs="git flow feature start"
alias gfff="git flow feature finish"
alias gffp="git flow feature publish"
alias gfft="git flow feature track"


# ASDF
alias redis="redis-server . &"
alias postgres="pg_ctl start"
alias kpostgres="pg_ctl stop"

# React Native
alias rn="react-native"
alias rn-ios="rn run-ios"
alias rn-android="rn run-android"
alias rn-start="npm start -- --reset-cache"

# Bash
alias copy_key="cat ~/.ssh/id_rsa.pub | pbcopy"

# Ember
alias es="ember s"


# Commons
alias rmds="find . -name '.DS_Store' -type f -delete"

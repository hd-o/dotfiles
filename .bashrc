# git
alias ga="git add -A"
alias gc="git add -A && git commit -m"
alias gcm="git add -A && git commit"
alias gp="git push"
alias gpl="git pull"
alias grhh="git reset --hard HEAD^"
alias grsh="git reset --soft HEAD^"
alias gs="git status"
alias gsc="git config credential.helper store"

# ls
alias l="ls -1A"
alias lsh="l -sh"

# node
alias nr="npm run"
alias dev="npm run dev"
alias test="npm run test"
alias ui="npm run test:ui"

export EDITOR=vim
export LIBVIRT_DEFAULT_URI="qemu:///system"
export PS1="${PS1%\$}\t\n\$ "
export TZ="America/Sao_Paulo"

netcap() {
  # allow binaries on protected ports (e.g 80, 443)
  sudo setcap cap_net_bind_service=+ep `which $1`
}

rmnm() {
  rm -rf node_modules
  rm -rf packages/**/node_modules
  rm -rf packages/**/**/node_modules
}

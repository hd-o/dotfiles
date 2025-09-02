#!/bin/bash
# git shell env

alias ga="git add"
alias gaa="git add -A"
alias gb="git branch"
alias gc="git add -A && git commit -m"
alias gcm="git commit"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcred="git config credential.helper store"
alias gl="git log"
alias gpl="git pull"
alias gps="git push"
alias grh="git reset --hard"
alias grhh="git reset --hard HEAD^"
alias grs="git reset --soft"
alias grsh="git reset --soft HEAD^"
alias gs="git status"

gbranch() {
  # get current git branch
  git branch 2>/dev/null | sed -n '/\* /s///p'
}

gclean() {
  # delete local branches except main
  git switch main && git branch | grep -v main | xargs git branch -d
}

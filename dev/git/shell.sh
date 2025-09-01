#!/bin/bash
# git shell env

alias ga="git add -A"
alias gc="git add -A && git commit -m"
alias gcm="git add -A && git commit"
alias gps="git push"
alias gpl="git pull"
alias grhh="git reset --hard HEAD^"
alias grsh="git reset --soft HEAD^"
alias gs="git status"
alias gsc="git config credential.helper store"
alias gclean="git switch main && git branch | grep -v main | xargs git branch -d"

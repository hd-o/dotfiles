#!/bin/bash
# system files shell env

alias cat="batcat"
alias l="ls -1A"
alias lsh="l -sh"

exists() {
  command -v "$1" >/dev/null 2>&1
}

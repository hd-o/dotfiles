#!/bin/bash
# system files shell env

alias cat="batcat"
alias ls="ls -lash"

exists() {
  command -v "$1" >/dev/null 2>&1
}

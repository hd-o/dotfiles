#!/bin/bash

alias dot="code ~/dotfiles"

source ~/dotfiles/system/files/shell.sh
source ~/dotfiles/dev/git/shell.sh
source ~/dotfiles/dev/node/shell.sh

export EDITOR=vim
export LIBVIRT_DEFAULT_URI="qemu:///system"

export PS1="\[\033[01;32m\]\u \[\033[01;34m\]\w\[\033[01;33m\] $(gbranch)\[\033[00m\] \t\n"
export TZ="America/Sao_Paulo"

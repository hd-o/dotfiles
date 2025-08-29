#!/bin/bash

alias dot="code ~/dotfiles"

export EDITOR=vim
export LIBVIRT_DEFAULT_URI="qemu:///system"
export PS1="${PS1%\$}\t\n\$ "
export TZ="America/Sao_Paulo"

source ~/dotfiles/system/files/shell.sh
source ~/dotfiles/dev/git/shell.sh
source ~/dotfiles/dev/node/shell.sh

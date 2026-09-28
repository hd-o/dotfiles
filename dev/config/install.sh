#!/bin/bash

source ~/dotfiles/system/files/shell.sh
source ~/dotfiles/system/logging/shell.sh

symlink() {
  local name="$1"; shift
  local path
  
  for path in "$@"; do
    local dest="$path/$name"

    if [ -e "$dest" ] || [ -L "$dest" ]; then
      warn "$dest already exists, skipping creation"
    else
      ln -sf ~/dotfiles/dev/config/"$name" "$dest"
    fi
  done
}

mkdir -p ~/.qoder/rules

symlink .agents ~
symlink AGENTS.md ~ ~/.qoder/rules

#!/bin/bash

source ~/dotfiles/system/files/shell.sh
source ~/dotfiles/system/logging/shell.sh

link_config() {
  local name="$1" path="$2"
  local dest="$path/$name"
  
  if [ -e "$dest" ] || [ -L "$dest" ]; then
    warn "$dest already exists, skipping creation"
  else
    ln -sf ~/dotfiles/dev/config/"$name" "$dest"
  fi
}

link_config .agents ~
link_config AGENTS.md $(exists qoder && echo ~/.qoder/rules || echo ~)

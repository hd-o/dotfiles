#!/bin/bash

for name in .agents AGENTS.md; do
  if [ -e ~/"$name" ] || [ -L ~/"$name" ]; then
    warn "~/${name} already exists, skipping creation"
  else
    ln -sf ~/dotfiles/dev/config/"$name" ~/"$name"
  fi
done

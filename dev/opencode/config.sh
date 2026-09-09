#!/bin/bash
# symlink opencode user config

mkdir -p ~/.config/opencode

rm -f ~/.config/opencode/opencode.jsonc
ln -sf ~/dotfiles/dev/opencode/opencode.jsonc ~/.config/opencode/opencode.jsonc

rm -rf ~/.config/opencode/commands
ln -sfn "$HOME/dotfiles/dev/opencode/commands" "$HOME/.config/opencode/commands"

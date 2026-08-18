#!/bin/bash
# symlink opencode user config

mkdir -p ~/.config/opencode
rm -f ~/.config/opencode/opencode.jsonc
ln -sf ~/dotfiles/dev/opencode/opencode.jsonc ~/.config/opencode/opencode.jsonc

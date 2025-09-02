#!/bin/bash
# symlink opencode user config

rm -f ~/.config/opencode/opencode.jsonc
ln -sf ~/dotfiles/dev/opencode/opencode.jsonc ~/.config/opencode/opencode.jsonc

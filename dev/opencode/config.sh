#!/bin/bash
# symlink opencode user config

mkdir -p ~/.config/opencode

rm -f ~/.config/opencode/opencode.jsonc
ln -sf ~/dotfiles/dev/opencode/opencode.jsonc ~/.config/opencode/opencode.jsonc

rm -rf ~/.config/opencode/skills
ln -sf ~/dotfiles/dev/config/.agents/commands ~/.config/opencode/skills

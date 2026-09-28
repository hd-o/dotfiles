#!/bin/bash
# symlink opencode user config

mkdir -p ~/.cursor

rm -rf ~/.cursor/skills
ln -sf ~/dotfiles/dev/config/.agents/commands ~/.cursor/skills

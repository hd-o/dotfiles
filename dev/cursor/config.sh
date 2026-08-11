#!/bin/bash
# https://cursor.com/docs/cli/reference/configuration

mkdir -p ~/.cursor
rm -f ~/.cursor/cli-config.json
ln -sf ~/dotfiles/dev/cursor/cli-config.json ~/.cursor/cli-config.json

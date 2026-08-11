#!/bin/bash
# https://docs.x.ai/build/settings

mkdir -p ~/.grok
rm -f ~/.grok/config.toml
ln -sf ~/dotfiles/dev/grok/config.toml ~/.grok/config.toml

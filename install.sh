#!/bin/bash

echo "source ~/dotfiles/.bashrc" >> ~/.bashrc

# CLI tools, GUI testing
sudo apt update && sudo apt install -y \
  bat fd-find fzf jq ripgrep tree vim xdg-utils \
  xvfb x11-utils scrot xdotool

git config --global core.editor vim
git config --global user.name "Hadrian de Oliveira"
(cd ~/dotfiles && git config user.email "hadrian.no.reply@outlook.com")

~/dotfiles/dev/opencode/install.sh
~/dotfiles/dev/config/install.sh

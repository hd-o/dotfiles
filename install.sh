#!/bin/bash

echo "source ~/dotfiles/.bashrc" >> ~/.bashrc

sudo apt update
sudo apt install -y bat fd-find fzf jq ripgrep tree vim xdg-utils

git config --global core.editor vim
git config --global user.name "Hadrian de Oliveira"
(cd ~/dotfiles && git config user.email "hadrian.no.reply@outlook.com")

~/dotfiles/dev/nvm/install.sh
~/dotfiles/dev/opencode/install.sh
~/dotfiles/dev/config/install.sh

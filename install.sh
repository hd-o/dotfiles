#!/bin/bash

echo "source ~/dotfiles/.bashrc" >> ~/.bashrc

sudo apt update
sudo apt upgrade -y
sudo apt install -y vim

git config --global core.editor vim
git config --global user.name "Hadrian de Oliveira"
(cd ~/dotfiles && git config user.email "hadrian.no.reply@outlook.com")

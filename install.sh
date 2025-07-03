#!/bin/bash

echo "source ~/dotfiles/.bashrc" >> ~/.bashrc

sudo apt update
sudo apt upgrade -y
sudo apt install -y vim

git config --global core.editor vim

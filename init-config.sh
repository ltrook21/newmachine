#!/bin/bash

sudo apt update -y && sudo apt upgrade

# backup bashrc
sudo cp ~/.bashrc ~/.bashrc.bk


# alias for typing
sudo echo "alias l=\"ls -lha\"" | tee -a ~/.bashrc
sudo echo "alias k=\"kubectl\"" | tee -a ~/.bashrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.bashrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.bashrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.bashrc

sudo echo "alias k=\"kubectl\"" | tee -a ~/.zshrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.zshrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.zshrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.zshrc

# install awesome vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
sudo echo "set numbers" | tee -a ~/.vim_runtime/my_configs.vim

# config nano
sudo cp ./.nanorc ~

#!/bin/bash

sudo apt update -y && sudo apt upgrade

# backup bashrc
sudo cp ~/.bashrc ~/.bashrc.bk


# alias for typing
sudo echo "alias l=\"ls -lha\"" | tee -a ~/.bashrc
sudo echo "alias k=\"kubectl\"" | tee -a ~/.bashrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.bashrc

# install awesome vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
sudo echo "set numbers" | tee -a ~/.vim_runtime/my_configs.vim

# config nano
sudo cp ./.nanorc ~ 

#!/bin/bash

sudo apt update -y && sudo apt upgrade

# backup bashrc
sudo cp ~/.bashrc ~/.bashrc.bk

# install zsh
sudo apt install zsh

# config oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# im still not sure about lines 15 and 16.
# Reset zsh for new config:
# exec zsh

# install p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# alias for typing
sudo echo "alias l=\"ls -lha\"" | tee -a ~/.bashrc
sudo echo "alias k=\"kubectl\"" | tee -a ~/.bashrc
sudo echo "alias kx=\"kubectx\"" | tee -a ~/.bashrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.bashrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.bashrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.bashrc

sudo echo "alias k=\"kubectl\"" | tee -a ~/.zshrc
sudo echo "alias kx=\"kubectx\"" | tee -a ~/.zshrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.zshrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.zshrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.zshrc

# install awesome vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
sudo echo "set number" | tee -a ~/.vim_runtime/my_configs.vim
sudo echo "colorscheme dracula" | tee -a ~/.vim_runtime/my_configs.vim

# config nano
sudo cp ./.nanorc ~

exec zsh

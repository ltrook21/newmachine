#!/bin/bash

sudo apt update -y && sudo apt upgrade

# This is for theming only. Moved to different file
# sudo apt install breeze-cursor-theme

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


# install awesome vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
sudo echo "set number" | tee -a ~/.vim_runtime/my_configs.vim
sudo echo "colorscheme dracula" | tee -a ~/.vim_runtime/my_configs.vim

# config nano
sudo cp ./.nanorc ~

exec zsh

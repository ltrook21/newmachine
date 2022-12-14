#!/bin/bash

sudo apt update -y && sudo apt upgrade

sudo cp ~/.bashrc ~/.bashrc.bk

# install zsh
sudo apt install zsh

# config oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc



# config nano
sudo cp ~/scripts/newmachine/.nanorc ~

exec zsh

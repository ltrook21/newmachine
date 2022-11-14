#!/bin/bash

sudo apt update -y && sudo apt upgrade

sudo cp ~/.bashrc ~/.bashrc.bk
# config nano
sudo cp ~/scripts/newmachine/.nanorc ~

# install zsh
sudo apt install zsh

# config oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

exec zsh

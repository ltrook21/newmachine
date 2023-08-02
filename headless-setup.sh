#! /bin/bash

echo -e "\n\n\n\nRunning initial scripts...\n\n\n\n"

echo -e "\n\nShell Set Up shell-start.sh (001) is running...\n\n"
sudo bash ~/scripts/newmachine/headless-instance/shell-start.sh


echo -e "\n\nCreating aliases...\n\n"
sudo bash ~/scripts/newmachine/headless-instance/p10k.sh


echo -e "\n\nShell Set Up install-neovim.sh (002) is running...\n\n"
sudo bash ~/scripts/newmachine/headless-instance/install-neovim.sh
mkdir ~/.config/nvim
cp ~/scripts/newmachine/nvim/init.vim ~/.config/nvim


echo -e "\n\n\n\nPlease wait...\n\n\n\n"


echo -e "\n\nCreating aliases...\n\n"
sudo bash ~/scripts/newmachine/aliases.sh



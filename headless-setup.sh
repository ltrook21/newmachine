#! /bin/bash

echo "\n\n\n\nRunning initial scripts...\n\n\n\n"

echo "\n\nShell Set Up shell-start.sh (001) is running...\n\n"
sudo bash ~/scripts/newmachine/headless-instance/shell-start.sh


echo "\n\nCreating aliases...\n\n"
sudo bash ~/scripts/newmachine/headless-instance/p10k.sh


echo "\n\nShell Set Up install-neovim.sh (002) is running...\n\n"
sudo bash ~/scripts/newmachine/headless-instance/install-neovim.sh


echo "\n\n\n\nPlease wait...\n\n\n\n"


echo "\n\nCreating aliases...\n\n"
sudo bash ~/scripts/newmachine/aliases.sh



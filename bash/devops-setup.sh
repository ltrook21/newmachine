#! /bin/bash

echo -e "\n\n\n\nRunning initial scripts...\n\n\n\n"

echo -e "\n\nShell Set Up shell-start.sh (001) is running...\n\n"
sudo bash ~/scripts/newmachine/devops-instance/shell-start.sh


echo -e "\n\nShell Set Up install-neovim.sh (002) is running...\n\n"
sudo bash ~/scripts/newmachine/devops-instance/install-neovim.sh


echo -e "\n\nShell Set Up workstation-setup (003) is running...\n\n"
sudo bash ~/scripts/newmachine/devops-instance/workstation-setup.sh

echo -e "\n\n\n\nPlease wait...\n\n\n\n"

echo -e "\n\nCreating aliases...\n\n"
sudo bash ~/scripts/newmachine/aliases.sh
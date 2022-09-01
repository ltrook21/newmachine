#! /bin/bash

# Shortcuts bash + zsh
sudo echo "alias l=\"ls -lha\"" | tee -a ~/.bashrc
sudo echo "alias k=\"kubectl\"" | tee -a ~/.bashrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.bashrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.bashrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.bashrc
sudo echo "alias ktx=\"kubectx\"" | tee -a ~/.bashrc


sudo echo "alias l=\"ls -lha\"" | tee -a ~/.zshrc
sudo echo "alias k=\"kubectl\"" | tee -a ~/.zshrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.zshrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.zshrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.zshrc
sudo echo "alias ktx=\"kubectx\"" | tee -a ~/.zshrc

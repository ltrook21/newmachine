#! /bin/bash

# alias for typing

# BASH

sudo echo "alias l=\"ls -lha\"" | tee -a ~/.bashrc
sudo echo "alias k=\"kubectl\"" | tee -a ~/.bashrc
sudo echo "alias kx=\"kubectx\"" | tee -a ~/.bashrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.bashrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.bashrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.bashrc
sudo echo "alias nv=\"nvim\"" | tee -a ~/.bashrc




# ZSH

sudo echo "alias k=\"kubectl\"" | tee -a ~/.zshrc
sudo echo "alias kx=\"kubectx\"" | tee -a ~/.zshrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.zshrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.zshrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.zshrc
sudo echo "alias nv=\"nvim\"" | tee -a ~/.zshrc


# k8s

sudo echo "alias kgp=\"k get po\"" | tee -a ~/.zshrc
sudo echo "alias kgs=\"k get svc\"" | tee -a ~/.zshrc
sudo echo "alias kg=\"k get\"" | tee -a ~/.zshrc
sudo echo "alias kc=\"k create\"" | tee -a ~/.zshrc
sudo echo "alias kr=\"k run\"" | tee -a ~/.zshrc
sudo echo "alias ka=\"k apply -f \"" | tee -a ~/.zshrc
sudo echo "alias kpf=\"k port-forward\"" | tee -a ~/.zshrc
sudo echo "alias kds=\"k describe\"" | tee -a ~/.zshrc
sudo echo "alias kd=\"k delete\"" | tee -a ~/.zshrc
#!/bin/bash

sudo apt update -y && sudo apt upgrade -y


## DOCKER
echo "\n\nDOCKER\n\n"
# set up docker repo
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


# add docker gpg key
sudo mkdir -p /etc/apt/keyrings -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


# set up docker repo
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin


## MINIKUBE
echo "\n\nMINIKUBE\n\n"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube


## KUBECTL
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


## KUBECTX
echo \n "KUBECTX"\n
# sudo apt install -y kubectx
sudo mkdir -p ~/.oh-my-zsh/completions
sudo chmod -R 755 ~/.oh-my-zsh/completions 
sudo ln -s /opt/kubectx/completion/_kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
sudo ln -s /opt/kubectx/completion/_kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh 


sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx 
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens



### NeoVim

wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb


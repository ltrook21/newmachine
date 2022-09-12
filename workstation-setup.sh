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
sudo install -y minikube-linux-amd64 /usr/local/bin/minikube

## KUBECTX
echo "\n\nKUBECTX\n\n"
sudo apt install -y kubectx

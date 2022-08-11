#!/bin/bash

sudo apt update -y && sudo apt upgrade

sudo cp ~/.bashrc ~/.bashrc.bk

sudo echo "alias l=\"ls -lha\"" | tee -a ~/.bashrc
sudo echo "alias k=\"kubectl\"" | tee -a ~/.bashrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.bashrc

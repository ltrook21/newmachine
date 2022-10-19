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


sudo echo "alias kgp=\"k get po\"" | tee -a ~/.bashrc
sudo echo "alias kgs=\"k get svc\"" | tee -a ~/.bashrc
sudo echo "alias kg=\"k get\"" | tee -a ~/.bashrc
sudo echo "alias kgd=\"k get deploy\"" | tee -a ~/.bashrc
sudo echo "alias kc=\"k create\"" | tee -a ~/.bashrc
sudo echo "alias kr=\"k run\"" | tee -a ~/.bashrc
sudo echo "alias ka=\"k apply -f \"" | tee -a ~/.bashrc
sudo echo "alias kpf=\"k port-forward\"" | tee -a ~/.bashrc
sudo echo "alias kds=\"k describe\"" | tee -a ~/.bashrc
sudo echo "alias kd=\"k delete\"" | tee -a ~/.bashrc



# ZSH

sudo echo "alias k=\"kubectl\"" | tee -a ~/.zshrc
sudo echo "alias kx=\"kubectx\"" | tee -a ~/.zshrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.zshrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.zshrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.zshrc
sudo echo "alias nv=\"nvim\"" | tee -a ~/.zshrc


# k8s

sudo echo "alias kg=\"k get\"" | tee -a ~/.zshrc
sudo echo "alias kgp=\"k get po\"" | tee -a ~/.zshrc
sudo echo "alias kgn=\"k get no\"" | tee -a ~/.zshrc
sudo echo "alias kgl=\"k get log\"" | tee -a ~/.zshrc
sudo echo "alias kghpa=\"k get hpa\"" | tee -a ~/.zshrc
sudo echo "alias kgs=\"k get svc\"" | tee -a ~/.zshrc
sudo echo "alias kgd=\"k get deploy\"" | tee -a ~/.zshrc
sudo echo "alias kc=\"k create\"" | tee -a ~/.zshrc
sudo echo "alias kr=\"k run\"" | tee -a ~/.zshrc
sudo echo "alias ka=\"k apply -f \"" | tee -a ~/.zshrc
sudo echo "alias kpf=\"k port-forward\"" | tee -a ~/.zshrc
sudo echo "alias kds=\"k describe\"" | tee -a ~/.zshrc
sudo echo "alias kd=\"k delete\"" | tee -a ~/.zshrc

sudo echo "alias venv=\"source venv/bin/activate\"" | tee -a ~/.zshrc
sudo echo "alias pmr=\"python manage.py runserver\"" | tee -a ~/.zshrc
sudo echo "alias gtc=\"git commit -a\"" | tee -a ~/.zshrc
sudo echo "alias gtp=\"git push\"" | tee -a ~/.zshrc
sudo echo "alias gtpu=\"git pull\"" | tee -a ~/.zshrc
sudo echo "alias kns=\"kubens\"" | tee -a ~/.zshrc


sudo echo "eval \$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" | tee -a ~/.zshrc

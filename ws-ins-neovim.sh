#! /bin/bash
### NeoVim

#wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb
#sudo dpkg -i nvim-linux64.deb
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update -y
sudo apt install neovim -y




mkdir ~/.config/ # should put an if statement to check if this folder exists.
mkdir ~/.config/nvim

sudo cp ~/scripts/newmachine/init.vim ~/.config/nvim -y



# vim plug for NeoVim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

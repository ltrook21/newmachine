#! /bin/bash
### NeoVim

wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb

mkdir ~/.config/nvim # should put an if statement to check if this folder exists.
touch ~/.config/nvim/init.vim

sudo echo ":set number" | tee -a ~/.config/nvim/init.vim

# vim plug for NeoVim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

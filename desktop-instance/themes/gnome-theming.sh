#! /bin/bash

sudo apt update -y && sudo apt upgrade

# mouse cursor
sudo apt install breeze-cursor-theme

# fonts
sudo wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf -O /usr/share/fonts/Knack\ Regular\ Nerd\ Font\ Complete.ttf
sudo wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Bold/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf -O /usr/share/fonts/Knack\ Bold\ Nerd\ Font\ Complete.ttf
sudo wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Italic/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf -O /usr/share/fonts/Knack\ Italic\ Nerd\ Font\ Complete.ttf
sudo wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/BoldItalic/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf -O /usr/share/fonts/Knack\ Bold\ Italic\ Nerd\ Font\ Complete.ttf
fc-cache -f

#!/bin/bash
VIMHOME=$HOME/.vim

echo "install bundles"
git clone https://github.com/scrooloose/nerdtree bundle/nerdtree
git clone https://github.com/Lokaltog/vim-powerline bundle/vim-powerline
git clone https://github.com/wincent/Command-T bundle/Command-T

echo "install vimrc"
cp vimrc "$HOME/.vimrc"

echo "update font for powerline"
sudo mkdir /usr/share/fonts/opentype
sudo cp Menlo-Powerline.otf /usr/share/fonts/opentype/Menlo-Powerline.otf
sudo fc-cache -fv

echo "Install Done!"
#!/bin/bash
VIMHOME=$HOME/.vim

echo "cloning into vim home"
git clone https://github.com/jokes000/vimrc.git "$VIMHOME"
cd "$VIMHOME"
git submodule update --init

echo "install vimrc"
ln -s vimrc "$HOME/.vimrc"

echo "Install Done!"
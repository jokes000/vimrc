#!/bin/bash
VIMHOME=$HOME/.vim

echo "install bundles"
git clone https://github.com/kien/ctrlp.vim bundle/ctrlp.vim
git clone https://github.com/Raimondi/delimitMate bundle/delimitMate
git clone https://github.com/Yggdroot/indentLine bundle/indentLine
git clone https://github.com/scrooloose/nerdtree bundle/nerdtree
git clone https://github.com/scrooloose/syntastic bundle/syntastic
git clone https://github.com/tpope/vim-commentary bundle/vim-commentary
git clone https://github.com/airblade/vim-gitgutter bundle/vim-gitgutter
git clone https://github.com/Lokaltog/vim-powerline bundle/vim-powerline
git clone https://github.com/vim-scripts/taglist.vim bundle/vim-taglist
git clone https://github.com/Valloric/YouCompleteMe bundle/YouCompleteMe

echo "install vimrc"
ln -s "$HOME/.vim/vimrc" "$HOME/.vimrc"

echo "update font for powerline"
sudo mkdir /usr/share/fonts/opentype
sudo cp Menlo-Powerline.otf /usr/share/fonts/opentype/Menlo-Powerline.otf
sudo fc-cache -fv

echo "Install Done!"
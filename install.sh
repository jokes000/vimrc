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

echo "install vimrc"
ln -s "$HOME/.vim/vimrc" "$HOME/.vimrc"

echo "Install Done!"

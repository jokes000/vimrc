#!/bin/bash
BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

echo "Step1: backing up current vim config"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -e $i ] && [ ! -L $i ] && mv $i $i.$today; done
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -L $i ] && unlink $i ; done

echo "Step2: setting up symlinks"
lnif $CURRENT_DIR/vimrc $HOME/.vimrc
lnif "$CURRENT_DIR/" "$HOME/.vim"

echo "Step3: set up font to fix powerline font bug."
chmod 644 Menlo-Powerline.otf
sudo mkdir /usr/share/fonts/opentype
sudo cp Menlo-Powerline.otf /usr/share/fonts/opentype/
sudo fc-cache -fv

echo "Install Done!"
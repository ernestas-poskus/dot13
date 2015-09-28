#!/bin/bash

# Update sources
sudo apt-get install update

# Libraries
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev

# Vim Ag
sudo apt-get install silversearcher-ag

# Tmux
sudo apt-get install tmux

# ctags
sudo apt-get install exuberant-ctags

# Vim
sudo apt-get remove vim vim-runtime gvim # Remove old vims
sudo apt-get remove vim-tiny vim-common vim-gui-common

sudo apt-get install liblua5.1-dev vim-nox
sudo mkdir /usr/include/lua5.1/include/
sudo cp /usr/include/lua5.1/* /usr/include/lua5.1/include/
sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.1.so /usr/local/lib/liblua.so
hg clone https://code.google.com/p/vim/
cd vim
./configure --with-features=huge \
    --enable-perlinterp \
    --enable-rubyinterp \
    --enable-pythoninterp=yes \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    --enable-multibyte \
    --enable-fontset \
    --enable-gui=gtk2 \
    --disable-netbeans \
    --enable-luainterp=yes \
    --with-lua-prefix=/usr/include/lua5.1 \
    --enable-cscope \
    --enable-largefile \
    --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo checkinstall
make install

# Zsh
sudo apt-get install -y zsh

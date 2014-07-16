#!/bin/sh

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if ! type -p vim > /dev/null; then

  echo "Installing Vim Files"

  if [ "$DOT_KERNEL" != '' ]; then

    if [ "$DOT_KERNEL" == 'darwin' ]; then
      brew uninstall macvim
      brew remove macvim
      brew cleanup
      brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit
    elif [ "$DOT_KERNEL" == 'linux' ]; then
      # Install lua from binaries (these are out-of-date but at least they worked).
      sudo apt-get install lua50 liblua50-dev liblualib50-dev

      # Remove old vims
      sudo apt-get remove vim vim-runtime gvim
      sudo apt-get remove vim-tiny vim-common vim-gui-common

      # Download and build a new vim
      sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
      libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
      libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev mercurial
      cd ~
      hg clone https://code.google.com/p/vim/
      cd vim
      cd ~/vim
      ./configure --with-features=huge \
                  --enable-rubyinterp \
                  --enable-pythoninterp \
                  --with-python-config-dir=/usr/lib/python2.7-config \
                  --enable-perlinterp \
                  --enable-gui=gtk2 --enable-cscope --prefix=/usr \
                  --enable-luainterp \
                  --with-lua-prefix=/usr/local
      echo "At this point, check the output of ./configure to see that it found lua.h."
      echo "If not, find out where it is (I'm afraid I can't remember where it was). "
      echo "Symlink to it in /usr/local with e.g. sudo ln -s ../lua.h and rerun ./configure."
      echo ''
      echo 'sudo make VIMRUNTIMEDIR=/usr/share/vim/vim74'
      echo 'sudo make install'
    fi

  fi
fi
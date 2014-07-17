Vim-files, dotfiles &amp; zsh
=====================

### Installation

```
sh -c "`curl -fsSL https://raw.githubusercontent.com/ernestas-poskus/dot13/master/install.sh`"
```

----------
#### Linux Vim + Lua Installation

##### Install lua from binaries (these are out-of-date but at least they worked).

    sudo apt-get install lua50 liblua50-dev liblualib50-dev
##### Remove old vims
    sudo apt-get remove vim vim-runtime gvim
    sudo apt-get remove vim-tiny vim-common vim-gui-common
##### Download and build a new vim
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
```
At this point, check the output of ./configure to see that it found lua.h.
If not, find out where it is symlink to it in /usr/local with
e.g. sudo ln -s ../lua.h and rerun ./configure
```
##### Finally run
    sudo make VIMRUNTIMEDIR=/usr/share/vim/vim74sudo make install

----------

##### Macvim + Lua Installation
```
brew uninstall macvim
brew remove macvim
brew cleanup
brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit
```

----------

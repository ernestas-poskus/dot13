#!/bin/sh
if ! which fzy  > /dev/null; then
  echo 'Installing fzy fuzzy finder'
  install_path='/tmp/fzy'
  git clone https://github.com/jhawthorn/fzy.git $install_path
  cd $install_path && sudo make install
fi

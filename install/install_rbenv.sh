#!/bin/sh

echo "Installing Ruby version manager: rbenv"
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

echo "Installing rbenv: ruby-build"
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "rbenv -> ruby-build -> install.sh"
sudo ~/.rbenv/plugins/ruby-build/install.sh

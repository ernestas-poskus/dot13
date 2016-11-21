# Ruby
if [ -d "$HOME/.rbenv" ]; then
  # Lightweight Ruby version manager
  # https://github.com/sstephenson/rbenv
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
else
  echo 'Ruby not found, attempting to install'

  echo "Installing Ruby version manager: rbenv"
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

  echo "Installing rbenv: ruby-build"
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

  echo "rbenv -> ruby-build -> install.sh"
  sudo ~/.rbenv/plugins/ruby-build/install.sh

fi

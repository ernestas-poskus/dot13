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

if which ruby > /dev/null; then
  if dot13_installed_or_mark 'ruby-pry'; then
    gem install pry
  fi

  if dot13_installed_or_mark 'ruby-pry-doc'; then
    gem install pry-doc
  fi

  if dot13_installed_or_mark 'ruby-ruby_parser'; then
    gem install ruby_parser
  fi

  if dot13_installed_or_mark 'ruby-rubycop'; then
    gem install rubycop
  fi

  if dot13_installed_or_mark 'ruby-mailcatcher'; then
    gem install mailcatcher
  fi

  if dot13_installed_or_mark 'ruby-neovim'; then
    gem install neovim
  fi

  if dot13_installed_or_mark 'ruby-chef'; then
    gem install chef chef-dk
  fi

  if dot13_installed_or_mark 'ruby-scss_lint'; then
    gem install scss_lint
  fi
fi

#!/bin/sh

# SCSS linting
if dot13_installed_or_mark 'emacs_scss_lint'; then
  gem install specific_install
  gem specific_install https://github.com/brigade/scss-lint.git
  gem specific_install https://github.com/Sweetchuck/scss_lint_reporter_checkstyle.git
fi

# JavaScript validation
if dot13_installed_or_mark 'emacs_javascript'; then
  npm install -g tern
  npm install -g js-beautify
  npm install -g eslint
  npm install -g jshint
fi

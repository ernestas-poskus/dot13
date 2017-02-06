#!/bin/sh

# SCSS linting
if dot13_installed_or_mark 'scss_lint'; then
  gem install specific_install
  gem specific_install https://github.com/brigade/scss-lint.git
  gem specific_install https://github.com/Sweetchuck/scss_lint_reporter_checkstyle.git
fi

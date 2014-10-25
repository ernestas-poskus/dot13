#!/bin/sh

if [ -f "$HOME/.dot13_environment" ]; then
  source "$HOME/.dot13_environment"
else
  echo '.dot13_environment - exports missing'
fi

# Centalized sourcefiles
for f in $HOME/dot13/sourcefiles/*; do
  if [ -f $f ]; then
    source $f
  fi
done

# Work config
if [ "$DOT13_ENV" = 'work' ]; then
  ln -sf "$HOME/dot13/work/.gitconfig_vinted" "$HOME/.gitconfig"
fi

# OS specific source
if [ "$DOT_KERNEL" = 'darwin' ]; then
  source "$DOT_PATH_DARWIN/.darwin_exports"
fi

if [ "$DOT_KERNEL" = 'linux' ]; then
  source "$DOT_PATH_LINUX/.linux_exports"

  # Remap keys
  xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' # Caps Lock -> ESC
  xmodmap -e 'clear Lock' -e 'keycode 0x6c = BackSpace' # R Alt -> Backspace
fi

# Load all of your custom configurations from zsh/config
for config_file in $HOME/dot13/zsh/config/*; do
  source $config_file
done

# Load all of your custom configurations from zsh/functions
for config_file in $HOME/dot13/zsh/functions/*; do
  source $config_file
done

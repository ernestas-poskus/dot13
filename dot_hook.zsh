#!/bin/zsh

if [ -f "$HOME/.dot13_environment" ]; then
  source "$HOME/.dot13_environment"
else
  echo '.dot13_environment - Environment / Kernel exports missing'
fi

# Centalized sourcefiles
for f ($HOME/dot13/sourcefiles/.*); do
  if [ -f $f ]; then
    source $f
  fi
done
unset $f

# OS specific source
if [ "$DOT_KERNEL" = 'darwin' ]; then
  source "$DOT_PATH_DARWIN/.darwin_exports"
fi

if [ "$DOT_KERNEL" = 'linux' ]; then
  source "$DOT_PATH_LINUX/.linux_exports"

  # Remap keys
  xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' # Caps Lock -> ESC
  xmodmap -e 'clear Lock' -e 'keycode 0x6c = BackSpace'
fi

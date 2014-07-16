#!/bin/sh

# Load all of your custom configurations from zsh/config
for config_file ($HOME/dot13/zsh/config/*.zsh(N)); do
  source $config_file
done
unset config_file

# Load all of your custom configurations from zsh/functions
for config_file ($HOME/dot13/zsh/functions/*.zsh(N)); do
  source $config_file
done
unset config_file

# Load all of your custom configurations from zsh/plugins
for config_file ($HOME/dot13/zsh/plugins/*.zsh(N)); do
  source $config_file
done
unset config_file
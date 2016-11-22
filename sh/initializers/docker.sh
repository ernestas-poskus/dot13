#!/bin/sh
if ! which docker > /dev/null; then
  echo 'Installing docker'
  curl -sSL https://get.docker.com/ | sh
  sudo usermod -aG docker $(whoami)
fi

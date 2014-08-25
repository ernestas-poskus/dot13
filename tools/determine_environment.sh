#!/bin/bash

if [ "$(whoami)" == 'ernestasposkus' ]; then
  echo 'export DOT13_ENV="work"' >> ~/.dot13_environment
else
  echo 'export DOT13_ENV="home"' >> ~/.dot13_environment
fi

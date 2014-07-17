#!/bin/bash

if [ "$(whoami)" == 'ernestasposkus' ]; then
  echo 'export DOT_ENV="work"' >> ~/.dot13_environment
else
  echo 'export DOT_ENV="home"' >> ~/.dot13_environment
fi

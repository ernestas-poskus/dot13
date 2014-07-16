#!/bin/bash

env=$(uname -s | tr '[:upper:]' '[:lower:]')

# Determine kernel: darwin / linux
echo "export DOT_KERNEL='$env'" >> ~/.dot13
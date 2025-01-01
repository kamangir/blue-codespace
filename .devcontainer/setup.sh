#!/bin/bash
# Update packages and install dependencies
apt-get update
apt-get install -y libgl1-mesa-glx

# Install Python packages
pip install --upgrade pip
pip install opencv-python-headless
pip install abcli blue-geo blueflow

# Append source command to .bashrc
echo "source $(python3 -m abcli locate)/.abcli/abcli.sh" >> $HOME/.bashrc



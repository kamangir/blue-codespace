#!/bin/bash
# Update packages and install dependencies
apt-get update -y
apt-get install -y libgl1-mesa-glx awscli

# Python packages
pip install --upgrade pip
pip install opencv-python-headless
pip install abcli blue-geo blueflow

# 🪄 abcli -> .bashrc
echo "source $(python3 -m abcli locate)/.abcli/abcli.sh" >>$HOME/.bashrc

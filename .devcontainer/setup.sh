#!/bin/bash
# Update packages and install dependencies
apt-get update -y
apt-get install -y libgl1-mesa-glx

# Python packages
pip install --upgrade pip
pip install opencv-python-headless
pip install abcli blue-geo blueflow

# aws cli
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
cd $HOME
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
aws --version

# .bashrc
echo "source $(python3 -m abcli locate)/.abcli/abcli.sh" >>$HOME/.bashrc
echo "cd /workspaces/blue-codespace; pip3 install -e .; cd blue_codespace/.abcli; source abcli.sh; source actions.sh; source alias.sh; source blue_codespace.sh; source browse.sh" >>$HOME/.bashrc

#!/bin/bash

#sudo apt update && sudo apt upgrade -y && sudo apt install -y python3 python3-pip python3-venv

python3 -m venv $HOME/venv/tools
. ~/venv/tools/bin/activate

pip install --upgrade pip
pip install awscli ansible 


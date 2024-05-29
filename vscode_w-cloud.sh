#!/bin/bash
apt update;apt -y install python python3 python3-pip
pip install tabulate pyppeteer
git clone https://github.com/phakamilemhluzana/browserless-python.git
cd browserless-python
chmod +x install.sh
./install.sh
export TERM=xterm
python3 main.py


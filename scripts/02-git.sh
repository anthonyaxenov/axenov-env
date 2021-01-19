#!/bin/bash
source ../helpers.sh
title "Installing git..."

sudo wget https://github.com/git/git/archive/master.zip -O /usr/src/git.zip
sudo unzip /usr/src/git.zip -d /usr/src/git
sudo rm -f /usr/src/git.zip
cd /usr/src/git
sudo make prefix=/usr/local all
sudo make prefix=/usr/local install
cd ..
sudo rm -rf git
git --version
sudo git clone https://github.com/git/git.git --depth=1 /usr/src/git

#!/bin/bash
source ../helpers.sh
title "Installing docker..."

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apti docker-ce docker-compose
sudo usermod -aG docker ${USER}

title "You need to logout and log in again to apply docker group"

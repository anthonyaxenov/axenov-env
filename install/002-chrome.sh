#!/bin/bash
source ../helpers.sh
title "Installing google chrome..."

# https://t.me/axenov_blog/251
# snapi chromium
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -O ~/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/google-chrome-stable_current_amd64.deb

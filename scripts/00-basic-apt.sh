#!/bin/bash
source ../helpers.sh
title "Installing basic software (apt)..."

sudo apt update
sudo apt upgrade -y --autoremove
apti apt-transport-https \
     ca-certificates \
     curl \
     make \
     dialog \
     build-essential \
     software-properties-common \
     libaio1 \
     libssl-dev \
     libghc-zlib-dev \
     libcurl4-gnutls-dev \
     libexpat1-dev \
     gettext \
     unzip \
     mc \
     htop \
     nano \
     neofetch \
     wine \
     ubuntu-restricted-extras \
     gnome-software \
     gnome-software-plugin-snap \
     default-jdk \
     nodejs \
     compiz \
     compizconfig-settings-manager \
     terminator \
     dconf-editor \
     alien \
     meld \
     vlc \
     redshift \
     gparted \
     minder \
     deepin-screenshot
   # snap

# sudo add-apt-repository ppa:danielrichter2007/grub-customizer -- 404
apti grub-customizer

sudo add-apt-repository ppa:agornostal/ulauncher
apti ulauncher

#!/bin/bash
source "../src/01-common.sh" || exit 50
header "Installing basic software (apt)..."

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
    ubuntu-restricted-extras \
    # snap \
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
    libreoffice \
    deepin-screenshot

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
apti grub-customizer

sudo add-apt-repository ppa:agornostal/ulauncher
apti ulauncher

sudo apt upgrade -y --autoremove

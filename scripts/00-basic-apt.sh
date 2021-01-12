#!/bin/bash
source ../loader.sh
title "Installing basic software (apt)..."

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
      # snap \
      gnome-software-plugin-snap \
      default-jdk \
      nodejs \
      compiz \
      compizconfig-settings-manager \
      terminator
apt upgrade -y

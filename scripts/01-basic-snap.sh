#!/bin/bash
source ./functions.sh
title "Installing basic software (snap)..."

#snap_i snapd
snap_i snap-store
snap_i telegram-desktop
snap_i chromium
snap_i code --classic
snap_i phpstorm
snap_i skype --classic
snap_i mysql-workbench-community
snap_i audacity
snap_i dbeaver-ce
snap_i discord
snap_i flameshot
snap_i gtk-common-themes
snap_i gtk2-common-themes
snap_i kde-frameworks-5-core18
snap_i liquibase
snap_i onlyoffice-desktopeditors
snap_i postman
snap_i zoom-client
#snap_i obs-studio

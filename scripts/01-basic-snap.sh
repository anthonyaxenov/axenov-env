#!/bin/bash
source ../loader.sh
title "Installing basic software (snap)..."

snap install core
snap refresh core
#snapi snapd
snapi snap-store
snapi telegram-desktop
snapi chromium
snapi code
snapi phpstorm
snapi skype
snapi mysql-workbench-community
snapi audacity
snapi dbeaver-ce
snapi discord
snapi flameshot
snapi gtk-common-themes
snapi gtk2-common-themes
snapi kde-frameworks-5-core18
#snapi liquibase
snapi onlyoffice-desktopeditors
snapi postman
snapi zoom-client
snapi obs-studio

snapi certbot # https://certbot.eff.org/
sudo ln -s /snap/bin/certbot /usr/bin/certbot

#!/bin/bash
source ../loader.sh
title "Installing theme..."

# theme
sudo cp -R ../theme/Budgie /usr/share/themes/Budgie

# cursor
sudo cp -R ../theme/Bridge /usr/share/icons/Bridge
sudo cp -R ../theme/Capitaine /usr/share/icons/Capitaine

# icons
if installed git
then
    sudo git clone git@github.com:PapirusDevelopmentTeam/papirus-icon-theme.git /usr/src/papirus
else
    sudo wget https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/archive/master.zip -O /usr/src/papirus2.zip
    sudo unzip /usr/src/papirus2.zip -d /usr/src/papirus2
    sudo rm -f /usr/src/papirus.zip
fi
# sudo ln -s /usr/src/papirus/ePapirus /var/share/icons/ePapirus
sudo ln -s /usr/src/papirus/Papirus /var/share/icons/Papirus
sudo ln -s /usr/src/papirus/Papirus-Dark /var/share/icons/Papirus-Dark
sudo ln -s /usr/src/papirus/Papirus-Light /var/share/icons/Papirus-Light

dconf write /org/mate/marco/general/theme "'Budgie'"
dconf write /org/mate/desktop/interface/gtk-theme "'Budgie'"
dconf write /org/mate/desktop/interface/icon-theme "'Papirus-Dark'"
dconf write /org/mate/desktop/peripherals/mouse/cursor-theme "'Capitaine'"
dconf write /org/mate/desktop/peripherals/mouse/cursor-size 20
dconf write /org/mate/notification-daemon/theme "'coco'"
dconf write /org/mate/notification-daemon/popup-location "'top_right'"

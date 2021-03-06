#!/bin/bash
<<<<<<< HEAD:scripts/10-theme.sh
source ../helpers.sh
title "Installing theme..."
=======
. "../src/01-common.sh" || exit 5
header "Installing theme..."
>>>>>>> 643f7dd0f5992667bfa303b2f8c3732c9d930676:install/010-theme.sh

# theme
sudo cp -R ../theme/Budgie /usr/share/themes/Budgie

# cursor
sudo cp -R ../theme/Bridge /usr/share/icons/Bridge
sudo cp -R ../theme/Capitaine /usr/share/icons/Capitaine

# icons
if installed git; then
    sudo git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git /usr/src/papirus
else
    sudo wget https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/archive/master.zip -O /usr/src/papirus.zip
    sudo unzip /usr/src/papirus.zip -d /usr/src/papirus
    sudo rm -f /usr/src/papirus.zip
fi
# sudo ln -s /usr/src/papirus/ePapirus /usr/share/icons/ePapirus
sudo ln -s /usr/src/papirus/Papirus /usr/share/icons/Papirus
sudo ln -s /usr/src/papirus/Papirus-Dark /usr/share/icons/Papirus-Dark
sudo ln -s /usr/src/papirus/Papirus-Light /usr/share/icons/Papirus-Light

dconf write /org/mate/marco/general/theme "'Budgie'"
dconf write /org/mate/desktop/interface/gtk-theme "'Budgie'"
dconf write /org/mate/desktop/interface/icon-theme "'Papirus-Dark'"
dconf write /org/mate/desktop/peripherals/mouse/cursor-theme "'Capitaine'"
dconf write /org/mate/desktop/peripherals/mouse/cursor-size 20
dconf write /org/mate/notification-daemon/theme "'coco'"
dconf write /org/mate/notification-daemon/popup-location "'top_right'"

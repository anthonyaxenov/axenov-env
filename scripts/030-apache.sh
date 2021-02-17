#!/bin/bash
source "../src/01-common.sh" || exit 50
header "Installing apache2..."

apti apache2
sudo service apache2 restart
apache2 -v

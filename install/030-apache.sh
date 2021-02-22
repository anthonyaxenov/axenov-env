#!/bin/bash
. "../src/01-common.sh" || exit 5
header "Installing apache2..."

apti apache2
sudo service apache2 restart
apache2 -v

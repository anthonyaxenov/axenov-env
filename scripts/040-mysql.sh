#!/bin/bash
source "../src/01-common.sh" || exit 50
header "Installing mariadb..."

apti mariadb-server mariadb-client
sudo mysql_secure_installation
installed php && apti php-mysql phpmyadmin

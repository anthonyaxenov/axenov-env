#!/bin/bash
source ../loader.sh
title "Installing mariadb..."

apti mariadb-server mariadb-client
sudo mysql_secure_installation
installed php && apti php-mysql phpmyadmin

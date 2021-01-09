#!/bin/bash
source ./functions.sh
title "Installing mariadb..."

apt_i mariadb-server \
      mariadb-client \
      php-mysql \
      phpmyadmin
mysql_secure_installation

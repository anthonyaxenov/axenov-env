#!/bin/bash
source ./functions.sh
title "Installing pgsql..."

apt_i postgresql \
      postgresql-contrib \
      php-pgsql
service postgresql restart

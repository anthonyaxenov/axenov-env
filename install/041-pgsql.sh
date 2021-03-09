#!/bin/bash
source ../helpers.sh
title "Installing pgsql..."

apti postgresql postgresql-contrib
sudo service postgresql restart
installed php && apti php-pgsql

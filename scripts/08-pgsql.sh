#!/bin/bash
source ../loader.sh
title "Installing pgsql..."

apti postgresql postgresql-contrib
sudo service postgresql restart
installed php && apti php-pgsql

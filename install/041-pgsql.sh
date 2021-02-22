#!/bin/bash
. "../src/01-common.sh" || exit 5
header "Installing pgsql..."

apti postgresql postgresql-contrib
sudo service postgresql restart
installed php && apti php-pgsql

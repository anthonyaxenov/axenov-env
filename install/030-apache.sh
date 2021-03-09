#!/bin/bash
source ../helpers.sh
title "Installing apache2..."

apti apache2
sudo service apache2 restart
apache2 -v

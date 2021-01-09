#!/bin/bash
source ./functions.sh
title "Installing apache2..."

apt_i apache2
service apache2 restart
apache2 -v

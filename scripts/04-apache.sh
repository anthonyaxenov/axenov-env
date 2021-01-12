#!/bin/bash
source ../loader.sh
title "Installing apache2..."

apti apache2
service apache2 restart
apache2 -v

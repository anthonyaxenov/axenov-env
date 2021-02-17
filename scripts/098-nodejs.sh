#!/bin/bash
source "../src/01-common.sh" || exit 50
header "Installing nodejs..."

apti nodejs npm
nodejs -v

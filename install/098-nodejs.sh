#!/bin/bash
. "../src/01-common.sh" || exit 5
header "Installing nodejs..."

apti nodejs npm
nodejs -v

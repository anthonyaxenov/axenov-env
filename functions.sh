#!/bin/bash

title() {
    echo ""
    echo "==============================================="
    echo "  $1"
    echo "==============================================="
    echo ""
}

apt_i() {
    sudo apt update -y
    sudo apt install -y --autoremove $@
}

snap_i() {
    snap install $@
}

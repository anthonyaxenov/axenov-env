#!/bin/bash
#[ $(id -u) -ne 0 ] && echo "You must run this script with sudo" && exit 1

title() {
    echo ""
    echo "==============================================="
    echo "  $1"
    echo "==============================================="
    echo ""
}

apti() {
    sudo apt install -y --autoremove $@
}

snapi() {
    snap install $1 2>&1
    [[ $? -ne 0 ]] && snap install $1 --classic
}

installed() {
    command -v "$1" >/dev/null 2>&1
}

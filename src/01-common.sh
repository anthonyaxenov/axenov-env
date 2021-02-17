#!/bin/bash
source "./../src/00-io.sh"
#[ $(id -u) -ne 0 ] && echo "You must run this script with sudo" && exit 1

header() {
    info ""
    info "==============================================="
    info "  $1"
    info "==============================================="
    info ""
}

apti() {
    sudo apt update -y
    sudo apt install -y --autoremove $@
}

snapi() {
    snap install $1 2>/dev/null
    [[ $? -ne 0 ]] && snap install $1 --classic
}

installed() {
    command -v "$1" >/dev/null 2>&1
}

die() {
    error "$1"
    exit $2 || 1
}

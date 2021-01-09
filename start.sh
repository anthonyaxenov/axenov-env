#!/bin/bash
OLDDIR=$PWD
INSTALLDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ./functions.sh

[ $(id -u) -ne 0 ] && echo "You must run this script with sudo" && exit 1
for script in "$INSTALLDIR"/scripts/*.sh
do
    source "$script"
done

# neofetch

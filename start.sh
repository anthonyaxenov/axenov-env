#!/bin/bash
OLDDIR=$PWD
INSTALLDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ./loader.sh

for script in "$INSTALLDIR"/scripts/*.sh
do
    source "$script"
done

# neofetch

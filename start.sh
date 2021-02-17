#!/bin/bash
OLDDIR=`pwd`
ENVDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ENVSRCDIR="$ENVDIR"/src
INSTALLDIR="$ENVDIR"/scripts

for script in "$ENVSRCDIR"/*.sh
do
    . "$script"
done

for script in "$INSTALLDIR"/*.sh
do
    . "$script"
done

# neofetch

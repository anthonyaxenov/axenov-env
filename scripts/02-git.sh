#!/bin/bash
source ../loader.sh
GITVER="2.30.0"
title "Installing git-$GITVER..."

cd /usr/src
wget https://github.com/git/git/archive/v$GITVER.zip -O git.zip
unzip git.zip
rm -f git.zip
cd git-$GITVER
make prefix=/usr/local all
make prefix=/usr/local install
cd ..
rm -rf git-$GITVER
git clone https://github.com/git/git.git --depth=1
git --version

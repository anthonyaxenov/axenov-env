#!/bin/bash
. "../src/01-common.sh" || exit 5
header "Installing git..."

if !installed 'git'; then
    sudo wget https://github.com/git/git/archive/master.zip -O /usr/src/git.zip
    sudo unzip /usr/src/git.zip -d /usr/src/git
    sudo rm -f /usr/src/git.zip
fi
cd /usr/src/git
if installed 'git'; then
    git pull
fi
sudo make prefix=/usr/local all
sudo make prefix=/usr/local install
cd ..
sudo rm -rf git
success "$(git --version)"
if !installed 'git'; then
    sudo git clone https://github.com/git/git.git --depth=1 /usr/src/git
fi

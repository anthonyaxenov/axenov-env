#!/bin/bash

# https://askubuntu.com/a/1228809

rm -rf ~/.cache/fontconfig
sudo fc-cache -r -v
find ~/snap/chromium/ -name 'fontconfig'
rm -rf ~/snap/chromium/common/.cache/fontconfig/

echo "Restart chromium!"

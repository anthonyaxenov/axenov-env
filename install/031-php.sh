#!/bin/bash
. "../src/01-common.sh" || exit 5
PHPVER=7.4
header "Installing php$PHPVER..."

sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
apti php$PHPVER \
    # php$PHPVER-common \
    # php$PHPVER-cli \
      php-xdebug \
      php$PHPVER-bcmath \
      php$PHPVER-bz2 \
      php$PHPVER-curl \
    # php$PHPVER-dba \
      php$PHPVER-gd \
      php$PHPVER-json \
    # php$PHPVER-ldap \
      php$PHPVER-mbstring \
      php$PHPVER-mysql \
      php$PHPVER-opcache \
      php$PHPVER-pgsql \
      php$PHPVER-soap \
    # php$PHPVER-sqlite3 \
      php$PHPVER-xml \
      php$PHPVER-xmlrpc \
      php$PHPVER-xsl \
      php$PHPVER-zip
php -v

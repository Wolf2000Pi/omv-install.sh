#!/bin/bash


echo "deb http://packages.openmediavault.org/public erasmus main" > /etc/apt/sources.list.d/openmediavault.list &&
sleep 15
gpg --recv-keys 7E7A6C592EF35D13 &&
sleep 15
gpg --export 7E7A6C592EF35D13 |apt-key add - &&
sleep 15
gpg --recv-keys 7E7A6C592EF35D13 &&
sleep 15
gpg --export 7E7A6C592EF35D13 |apt-key add - &&
sleep 15
apt-get update &&
sleep 1
apt-get install --force-yes openmediavault-keyring postfix ssl-cert &&
sleep 1
apt-get update &&
sleep 1
apt-get --yes --force-yes --allow-unauthenticated install openmediavault php-apc &&
sleep 1
echo Das wars Openmediavult ist jetzt Installiert

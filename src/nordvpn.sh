#!/bin/bash

if [ -f /etc/apt/sources.list.d/nordvpn.list ];
then
    exit
fi


curl \
    https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb \
    -o /tmp/nordvpn-release_1.0.0_all.deb

sudo apt-get install /tmp/nordvpn-release_1.0.0_all.deb
sleep 1

sudo apt-get update
sudo apt-get install nordvpn
sleep 1

nordvpn set killswitch enabled




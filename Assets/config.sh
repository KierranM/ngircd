#!/bin/bash

NGIRCD_CONFIG="/ngircd"

# if the default config doesn't exist, copy it
if [[ ! -f $NGIRCD_CONFIG/ngircd.conf ]]; then
  cp -L /etc/ngircd/ngircd.conf /ngircd
fi

if [[ ! -f $NGIRCD_CONFIG/ngircd.motd ]]; then
  cp -L /etc/ngircd/ngircd.motd /ngircd
fi

rm -rf /etc/ngircd
ln -s /ngircd /etc/ngircd

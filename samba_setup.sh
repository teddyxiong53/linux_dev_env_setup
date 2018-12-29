#!/bin/sh

set -e 

echo "install samba"
sudo apt-get install samba

echo "config samba"
sudo cp -f ./smb.conf /etc/samba

echo "restart samba"
sudo /etc/init.d/nmbd restart
sudo /etc/init.d/smbd restart

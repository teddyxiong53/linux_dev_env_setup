#!/bin/sh

set -e 

# install polipo
sudo apt-get install polipo

sudo apt-get install shadowsocks

echo "get account info from gist, write it to /etc/shadowsocks/config.json"
while [  true ]; do
	echo "if you finish it, then input yes "
	read tmp
	if [ "$tmp" == "yes" ]; then
		break
	fi
done

echo "now start polipo"
sudo service polipo stop
sudo service polipo start

echo "now open a new shell, input sslocal -c /etc/shadowsocks/config"
while [  true ]; do
	echo "if you finish it, then input yes "
	read tmp
	if [ "$tmp" == "yes" ]; then
		break
	fi
done

echo "now setup http_proxy"
echo "http_proxy=http://127.0.0.1:8123" >> ~/.bashrc
echo "http2_proxy=https://127.0.0.1:8123" >> ~/.bashrc

echo "now your can ping google.com to test network"

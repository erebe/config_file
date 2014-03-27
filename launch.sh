#!/bin/bash

cd /etc/openvpn/

sudo pkill openvpn
sudo openvpn client.conf &

sudo sh -c "echo 'nameserver 192.168.200.1' > /etc/resolv.conf"

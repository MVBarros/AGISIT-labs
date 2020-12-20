#!/usr/bin/env bash

sudo apt-get update
sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime
# install ansible (http://docs.ansible.com/intro_installation.html)
sudo apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

# configure hosts file for the internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
192.168.56.10  mgmt
192.168.56.11  balancer
192.168.56.21  web1
192.168.56.22  web2
192.168.56.23  web3
192.168.56.24  web4
192.168.56.25  web5
192.168.56.26  web6
192.168.56.27  web7
192.168.56.28  web8
192.168.56.29  web9
EOL

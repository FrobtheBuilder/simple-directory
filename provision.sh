#!/bin/bash
cd ~/
set -ex
apt-get update -qq
apt-get install -q -y build-essential curl libcurl4-openssl-dev nodejs

user=$(cat /vagrant/user.sh)
su - vagrant -c "$user"

#!bin/bash

# For Ubuntu 20.04

sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

apt-cache policy docker-ce

sudo apt-get -y install docker-ce

sudo usermod -aG docker ${USER}

sudo apt install python3-pip

sudo pip3 install docker-compose

cd ..
cd dockerCompose/visualStudioCodeServer/
sudo docker-compose up -d
cd ..
cd nginxProxyManager/
sudo docker-compose up -d

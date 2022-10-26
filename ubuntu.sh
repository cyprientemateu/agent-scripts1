#!/bin/bash

#Description: sript for packages installation on ubuntu
#Author: Carlos Temateu
#Date: oct 2022


apt-get install wget -y
sleep 1
apt-get install net-utils -y
sleep 1
apt-get install sysstat -y
sleep 1
apt-get install finger -y
sleep 1
apt-get install gcc -y
sleep 1
apt-get install make -y
sleep 1
apt-get install python3 -y
sleep 1
apt-get install epel-release -y
sleep 1
apt-get install git -y
sleep 1
apt-get install vim -y
sleep 1
apt-get install unzip -y

if [$? -eq 0]

then
echo "packages was installed successfully"

else

echo "packages did not installed"

fi
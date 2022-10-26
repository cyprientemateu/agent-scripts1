#!/bin/bash

#Description: sript for packages installation on centos7
#Author: Carlos Temateu
#Date: oct 2022


yum install wget -y
sleep 1
yum install net-utils -y
sleep 1
yum install sysstat -y
sleep 1
yum install finger -y
sleep 1
yum install gcc -y
sleep 1
yum install make -y
sleep 1
yum install python3 -y
sleep 1
yum install epel-release -y
sleep 1
yum install git -y
sleep 1
yum install vim -y
sleep 1
yum install unzip -y

if [$? -eq 0]

then
echo "packages was installed successfully"

else

echo "packages was not installed"

fi
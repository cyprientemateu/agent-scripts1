#!/bin/bash

#Description: sript for packages installation on alpine
#Author: Carlos Temateu
#Date: oct 2022

apk update -y
sleep 1
apk install wget -y
sleep 1
apk install net-utils -y
sleep 1
apk install sysstat -y
sleep 1
apk install finger -y
sleep 1
apk install gcc -y
sleep 1
apk install make -y
sleep 1
apk install python3 -y
sleep 1
apk install epel-release -y
sleep 1
apk install git -y
sleep 1
apk install vim -y
sleep 1
apk install unzip -y

if [$? -eq 0]

then
echo "packages was installed successfully"

else

echo "packages did not installed"

fi

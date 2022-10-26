#!/bin/bash

#Description: script installation for jenkins on centos7 server
#Author: Carlos Temateu
#Date: oct 2022

if [$? -eq o]

echo "step 1: installation of java" 
sudo yum install java-11-openjdk-devel -y

echo "step 2: enable the jenkins repository"
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

echo "step 3: install the latest stable version of jenkins"
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins

echo "step 4: install firewalld"
sudo yum install firewalld -y
sudo systemctl enable firewalld
sudo systemctl start firewalld
sudo systemctl status firewalld

echo "step 5: adjust the firewall"
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

then

echo "jenkins installed successfully"

else

echo "jenkins did not installed"

fi

#!/bin/bash

#Description: script for docker installation on centos7
#Author: Carlos Temateu
#Date: oct 2022 

echo "uninstall old versions of docker"
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

echo "installation/set up the repository"
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

echo "install docker engine. 1)install the latest version"
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "2) install a specific version"
yum list docker-ce --showduplicates | sort -r

docker-ce.x86_64  3:18.09.1-3.el7                     docker-ce-stable
docker-ce.x86_64  3:18.09.0-3.el7                     docker-ce-stable
docker-ce.x86_64  18.06.1.ce-3.el7                    docker-ce-stable
docker-ce.x86_64  18.06.0.ce-3.el7                    docker-ce-stable

sudo yum install -y docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io docker-compose-plugin

echo "3) start docker"
sudo systemctl start docker

echo "4) verifiying the installed docker machine"
sudo docker run hello-world

echo "the installation is complete and ready to run"
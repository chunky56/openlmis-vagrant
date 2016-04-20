#!/bin/bash
#This is an installation script for OpenLMIS 2.0 for CentOS 7

echo "Get git"
yum install -y git

echo "Get OpenLMIS Docker from repository and go to demo-seed branch"
git clone https://github.com/chunky56/open-lmis-docker.git
cd open-lmis-docker
git checkout demo-seed

echo "Get OpenLMIS Manager from repository"
git clone https://github.com/joshzamor/open-lmis-manager.git

echo "Create OpenLMIS db directory for Docker volume"
cd ..
mkdir open-lmis-db
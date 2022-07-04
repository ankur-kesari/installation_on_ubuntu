#!/bin/bash
wget https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz
tar -xvzf  helm-v3.4.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin
sudo rm helm-v3.4.1-linux-amd64.tar.gz
sudo rm -rf linux-amd64
helm version

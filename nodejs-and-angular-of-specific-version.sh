#!/bin/bash
sudo apt -y update

#downgrade nodejs and angular
sudo apt remove nodejs -y
sudo apt install  nodejs npm -y
sudo npm cache clean -f
sudo npm install -g n
sudo n 14.15.0
sudo npm install pm2 -g

#install angular of specific version
sudo npm uninstall -g @angular/cli
sudo npm cache clean -f
sudo npm install -g @angular/cli@10.0.0

#!/bin/bash

sudo apt update -y
sudo apt install -y ruby-full
sudo apt install wget
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
sudo service codedeploy-agent status
sudo systemctl status codedeploy-agent

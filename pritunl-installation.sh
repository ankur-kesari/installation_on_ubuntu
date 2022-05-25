#!/bin/bash
sudo apt update -y
sudo apt-get install curl gnupg2 wget unzip -y
sudo curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc |sudo apt-key add -
sudo echo 'deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse' |sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update -y
sudo apt-get install mongodb-server -y
sudo systemctl start mongodb
sudo systemctl enable mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv E162F504A20CDF15827F718D4B7C549A058F8B6B
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo echo 'deb http://repo.pritunl.com/stable/apt focal main' |sudo tee /etc/apt/sources.list.d/pritunl.list
sudo apt-get update -y
sudo apt-get install pritunl -y
sudo systemctl start pritunl
sudo systemctl enable pritunl

#https://www.techrepublic.com/article/how-to-install-the-pritunl-vpn-server-on-ubuntu-server-20-04/

#to generate key
sudo pritunl setup-key

#to obtain default username and password
sudo pritunl default-password




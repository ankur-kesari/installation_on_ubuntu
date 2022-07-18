#!/bin/bash
curl https://releases.rancher.com/install-docker/20.10.sh | sh
sudo docker run --privileged -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher
	
#Passwaord-	by root user
#docker logs container-id 2>&1 | grep "Bootstrap Password:"


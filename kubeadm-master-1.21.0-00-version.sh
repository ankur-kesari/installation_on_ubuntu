#!/bin/bash

sudo apt update -y

sudo apt install docker.io -y

sudo apt install -y apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update -y  

sudo apt install -y kubelet=1.21.0-00  kubeadm=1.21.0-00  kubectl=1.21.0-00

sudo apt-mark hold kubelet kubeadm kubectl

sudo kubeadm init  --pod-network-cidr 192.168.0.0/16 --kubernetes-version 1.21.0

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get pod --all-namespaces
kubectl version
kubectl version --short
kubeadm token create --print-join-command

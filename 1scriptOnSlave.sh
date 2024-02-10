#!/bin/bash


apt-get update && apt-get install apt-transport-https

apt install docker.io -y
#docker --version

systemctl start docker

#systemctl enable docker

sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add 

#nano /etc/apt/sources.list.d/kubernetes.list

#deb http://apt.kubernetes.io/ kubernetes-xenial main

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" >> /etc/apt/sources.list.d/kubernetes.list 

apt-get update

apt-get install -y kubelet kubeadm kubectl kubernetes-cni


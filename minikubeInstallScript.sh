#!/bin/bash

## update and install Docker

apt-get update

apt-get install vim -y

apt-get install docker.io -y

systemctl start docker

sudo apt-get install curl -y

sudo apt-get install apt-transport-https

### install kubectl

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

kubectl version --client --output=yaml

### Minikube install

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube

apt install conntrack

# minikube start --vm-driver=none

minikube start --force


###############################





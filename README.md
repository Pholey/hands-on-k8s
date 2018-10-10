# hands-on-k8s
Install a k8s cluster on your machine

## Getting started:

0) Install docker if not already installed

1) Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

2) Install Kubectl:
```bash
$ brew install kubernetes-cli
```

3) Install minikube:
```bash
$ brew cask install minikube
```

4) Run minikube (you may need to do this twice):
```bash
$ minikube start
```

5) Configure kubectl profile to use minikube:
```bash
$ kubectl config set-cluster demo-cluster --server=127.0.0.1
$ kubectl config set-context demo-cluster
$ kubectl config use-context demo-cluster
```
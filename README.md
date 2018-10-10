# hands-on-k8s
Install a k8s cluster on your machine

## Getting started:

0) Install docker if not already installed:
```bash
$ brew cask install docker
```

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

You should be able to run `kubectl version` with no errors now:
```bash
# cassidybridges @ Cassidys-MacBook-Pro in ~ [12:43:57]
$ kubectl version
Client Version: version.Info{Major:"1", Minor:"11", GitVersion:"v1.11.2", GitCommit:"bb9ffb1654d4a729bb4cec18ff088eacc153c239", GitTreeState:"clean", BuildDate:"2018-08-08T16:31:10Z", GoVersion:"go1.10.3", Compiler:"gc", Platform:"darwin/amd64"}
Server Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.0", GitCommit:"fc32d2f3698e36b93322a3465f63a14e9f0eaead", GitTreeState:"clean", BuildDate:"2018-03-26T16:44:10Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"linux/amd64"}
```


6) Build the docker image in minikube:
```bash
$ eval $(minikube docker-env) && docker build -t simple-server-image .
```

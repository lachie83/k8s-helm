# Helm Client

# Supported tags and respective `Dockerfile` links
* `v2.8.0`, `latest`    [(v2.8.0/Dockerfile)](https://github.com/fabio-ptc/k8s-helm/blob/v2.8.0/Dockerfile)

## Overview
This container provides the Helm client for use with Kubernetes

## Run with tunneling
`kubectl run -it helm --env=HELM_HOST=<HOST>:<PORT> --image=lachlanevenson/k8s-helm --command /bin/sh -n kube-system --rm=true` 

## Run without tunneling
`kubectl run -it helm --image=lachlanevenson/k8s-helm --command /bin/sh -n kube-system --rm=true`



# Helm Client

### CircleCI Build Status
[![CircleCI](https://circleci.com/gh/lachie83/k8s-helm.svg?style=svg)](https://circleci.com/gh/lachie83/k8s-helm)

### Container Details
[![](https://images.microbadger.com/badges/image/lachlanevenson/k8s-helm.svg)](http://microbadger.com/images/lachlanevenson/k8s-helm "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/lachlanevenson/k8s-helm.svg)](http://microbadger.com/images/lachlanevenson/k8s-helm "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/lachlanevenson/k8s-helm.svg)](http://microbadger.com/images/lachlanevenson/k8s-helm "Get your own commit badge on microbadger.com")

# Supported tags and respective `Dockerfile` links
* `v2.14.0`, `latest`    [(v2.14.0/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.14.0/Dockerfile)
* `v2.13.1`,    [(v2.13.1/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.13.1/Dockerfile)
* `v2.12.3`,    [(v2.12.3/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.12.3/Dockerfile)
* `v2.11.0`,    [(v2.11.0/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.11.0/Dockerfile)
* `v2.10.0`,    [(v2.10.0/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.10.0/Dockerfile)
* `v2.9.1`,     [(v2.9.1/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.9.1/Dockerfile)
* `v2.8.2`,     [(v2.8.2/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.8.2/Dockerfile)
* `v2.7.2`,     [(v2.7.2/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.7.2/Dockerfile)
* `v2.6.1`,     [(v2.6.1/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.6.1/Dockerfile)
* `v2.5.1`,     [(v2.5.1/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.5.1/Dockerfile)
* `v2.4.2`,     [(v2.4.2/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.4.2/Dockerfile)
* `v2.3.1`,     [(v2.3.1/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.3.1/Dockerfile)
* `v2.2.2`,     [(v2.2.2/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.2.2/Dockerfile)
* `v2.1.3`,     [(v2.1.3/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.1.3/Dockerfile)
* `v2.0.2`,     [(v2.0.2/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.0.2/Dockerfile)

## Overview
This container provides the Helm client for use with Kubernetes

## Run with tunneling
`kubectl run -it helm --env=HELM_HOST=<HOST>:<PORT> --image=lachlanevenson/k8s-helm --command /bin/sh -n kube-system --rm=true` 

## Run without tunneling
`kubectl run -it helm --image=lachlanevenson/k8s-helm --command /bin/sh -n kube-system --rm=true`



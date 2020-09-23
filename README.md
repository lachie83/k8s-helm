# Helm Client

### Build GitHub Action Status

![Build and Publish Helm container](https://github.com/lachie83/k8s-helm/workflows/Build%20and%20Publish%20Helm%20container/badge.svg)

### Container Details
[![](https://images.microbadger.com/badges/image/lachlanevenson/k8s-helm.svg)](http://microbadger.com/images/lachlanevenson/k8s-helm "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/lachlanevenson/k8s-helm.svg)](http://microbadger.com/images/lachlanevenson/k8s-helm "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/lachlanevenson/k8s-helm.svg)](http://microbadger.com/images/lachlanevenson/k8s-helm "Get your own commit badge on microbadger.com")

# Supported tags and respective `Dockerfile` links
* `v3.3.4`,  `latest` [(v3.3.4/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v3.3.4/Dockerfile)
* `v3.2.4`,      [(v3.2.4/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v3.2.4/Dockerfile)
* `v3.1.2`,      [(v3.1.2/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v3.1.2/Dockerfile)
* `v3.0.3`,      [(v3.0.3/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v3.0.3/Dockerfile)
* `v2.16.11`,     [(v2.16.11/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.16.11/Dockerfile)
* `v2.15.2`,     [(v2.15.2/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.15.2/Dockerfile)
* `v2.14.3`,     [(v2.14.3/Dockerfile)](https://github.com/lachie83/k8s-helm/blob/v2.14.3/Dockerfile)
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



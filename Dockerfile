FROM alpine

MAINTAINER Karl Alnebratt <karl.alnebratt@gmail.com>

ENV KUBE_LATEST_VERSION="v1.10.3"

RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

ENV HELM_LATEST_VERSION="v2.9.1"

RUN apk add --update ca-certificates \
 && apk add --update -t deps wget \
 && apk add git openssh bash build-base \
 && wget https://storage.googleapis.com/kubernetes-helm/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
 && tar -xvf helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin \
 && apk del --purge deps \
 && rm /var/cache/apk/* \
 && rm -f /helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz

ENTRYPOINT ["kubectl"]
CMD ["help"]

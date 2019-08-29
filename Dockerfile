FROM alpine

LABEL maintainer="Lachlan Evenson <lachlan.evenson@gmail.com>"

ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/lachie83/k8s-helm" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

ENV HELM_LATEST_VERSION="v2.14.3"

RUN apk add --update ca-certificates \
 && apk add --update -t deps wget git openssl bash \
 && wget https://storage.googleapis.com/kubernetes-helm/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
 && tar -xvf helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin \
 && apk del --purge deps \
 && rm /var/cache/apk/* \
 && rm -f /helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz

ENTRYPOINT ["helm"]
CMD ["help"]

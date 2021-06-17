FROM alpine

LABEL maintainer="Lachlan Evenson <lachlan.evenson@gmail.com>"

# Metadata
LABEL org.opencontainers.image.title="lachlanevenson/k8s-helm" \
      org.opencontainers.image.url="https://helm.sh/docs/"

ENV HELM_LATEST_VERSION="v3.6.1"

ARG TARGETARCH
ENV TARGETARCH=${TARGETARCH:-amd64}

RUN apk add --update ca-certificates

RUN apk add --update -t deps
RUN apk add --update -t wget
RUN apk add --update -t git
RUN apk add --update -t openssl
RUN apk add --update -t bash

RUN wget -q https://get.helm.sh/helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz \
 && tar -xf helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz \
 && mv linux-${TARGETARCH}/helm /usr/local/bin

RUN apk del --purge deps \
 && rm /var/cache/apk/* \
 && rm -f /helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz

ENTRYPOINT ["helm"]
CMD ["help"]

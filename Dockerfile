FROM alpine

LABEL maintainer="Lachlan Evenson <lachlan.evenson@gmail.com>"

# Metadata
LABEL org.opencontainers.image.title="lachlanevenson/k8s-helm" \
      org.opencontainers.image.url="https://helm.sh/docs/"

ENV HELM_LATEST_VERSION="v3.6.2"

ARG TARGETARCH
ENV TARGETARCH=${TARGETARCH:-amd64}

RUN apk add --update ca-certificates \
 && apk add -t deps \
 && apk add -t wget \
 && apk add -t git \
 && apk add -t openssl \
 && apk add -t bash \
 && wget -q https://get.helm.sh/helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz \
 && tar -xf helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz \
 && mv linux-${TARGETARCH}/helm /usr/local/bin \
 && apk del --purge deps \
 && rm /var/cache/apk/* \
 && rm -f /helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz

ENTRYPOINT ["helm"]
CMD ["help"]

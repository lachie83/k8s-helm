FROM alpine

LABEL maintainer="Lachlan Evenson <lachlan.evenson@gmail.com>"

# Metadata
LABEL org.opencontainers.image.title="lachlanevenson/k8s-helm" \
      org.opencontainers.image.url="https://helm.sh/docs/"

ENV HELM_LATEST_VERSION="v3.4.0"

RUN apk add --update ca-certificates \
 && apk add --update -t deps wget git openssl bash \
 && wget -q https://get.helm.sh/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
 && tar -xf helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin \
 && apk del --purge deps \
 && rm /var/cache/apk/* \
 && rm -f /helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz

ENTRYPOINT ["helm"]
CMD ["help"]

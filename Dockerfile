FROM alpine

LABEL maintainer="ReturnPath <ops@returnpath.com>"

ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/ReturnPath/k8s-helm" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

ENV HELM_LATEST_VERSION="v2.9.1"

RUN apk add --update ca-certificates \
 && apk add --update -t deps wget \
 && wget https://storage.googleapis.com/kubernetes-helm/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
 && tar -xvf helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin \
 && apk del --purge deps \
 && rm /var/cache/apk/* \
 && rm -f /helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz

# Install heptio-authenticator-aws
RUN wget https://github.com/heptio/authenticator/releases/download/v0.3.0/heptio-authenticator-aws_0.3.0_linux_amd64 -O /usr/local/bin/heptio-authenticator-aws \
 && chmod +x /usr/local/bin/heptio-authenticator-aws

ENTRYPOINT ["helm"]
CMD ["help"]

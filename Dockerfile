FROM circleci/golang:1.14 as diff
USER 0
RUN wget https://github.com/databus23/helm-diff/archive/refs/tags/v3.1.3.tar.gz \
  && export CGO_ENABLED=0 \
  && tar -zxvf v3.1.3.tar.gz \
  && cd helm-diff-3.1.3 \
  && make bootstrap \
  && make test \
  && make install HELM_HOME=/helmhome \
  && find /helmhome \
  && /helmhome/plugins/helm-diff/bin/diff version

FROM alpine

LABEL maintainer="Lachlan Evenson <lachlan.evenson@gmail.com>"

# Metadata
LABEL org.opencontainers.image.title="lachlanevenson/k8s-helm" \
      org.opencontainers.image.url="https://helm.sh/docs/"

ENV HELM_LATEST_VERSION="v3.7.1"

ARG TARGETARCH
ENV TARGETARCH=${TARGETARCH:-amd64}

RUN apk add --update ca-certificates \
 && apk add --update -t deps wget git openssl bash \
 && wget -q https://get.helm.sh/helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz \
 && tar -xf helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz \
 && mv linux-${TARGETARCH}/helm /usr/local/bin \
 && apk del --purge deps \
 && rm /var/cache/apk/* \
 && rm -f /helm-${HELM_LATEST_VERSION}-linux-${TARGETARCH}.tar.gz \
 && mkdir -p ~/.local/share/helm/

COPY --from=diff /helmhome/plugins* /root/.local/share/helm/plugins/

ENTRYPOINT ["helm"]
CMD ["help"]

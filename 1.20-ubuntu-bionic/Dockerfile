# Nginx with background script to register vhost in etcd
FROM markusma/nginx:1.20-ubuntu-bionic

# ETCD_VERSION cannot be used because etcd reads it
ENV DOCKERFILE_ETCD_VERSION=3.5.1

RUN cd /tmp \
 && curl -LO https://github.com/etcd-io/etcd/releases/download/v${DOCKERFILE_ETCD_VERSION}/etcd-v${DOCKERFILE_ETCD_VERSION}-linux-amd64.tar.gz \
 && tar zxf etcd-v${DOCKERFILE_ETCD_VERSION}-linux-amd64.tar.gz \
 && cd etcd-v${DOCKERFILE_ETCD_VERSION}-linux-amd64 \
 && mv etcdctl /usr/local/bin/ \
 && cd / \
 && rm -rf /tmp/*

COPY etc/ /etc/
COPY bin/ /usr/local/bin/

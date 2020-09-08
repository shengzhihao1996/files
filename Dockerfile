FROM alpine:latest
RUN apk add wget ;wget https://github.com/etcd-io/etcd/releases/download/v3.4.3/etcd-v3.4.3-linux-amd64.tar.gz

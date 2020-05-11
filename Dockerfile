FROM alpine
RUN  git clone https://github.com/fluent/fluent-bit.git -b v1.3.11
# RUN wget https://github.com/zeebe-io/zeebe/releases/download/0.22.2/zeebe-distribution-0.22.2.tar.gz
# RUN wget https://github.com/zeebe-io/zeebe-hazelcast-exporter/releases/download/0.7.0/zeebe-hazelcast-exporter-0.7.0-jar-with-dependencies.jar
# RUN wget https://github.com/krallin/tini/releases/download/v0.18.0/tini
#FROM fluent/fluentd-kubernetes-daemonset:v1-debian-elasticsearch
#FROM argoproj/argocd:latest
#golang
#RUN go get -u github.com/go-delve/delve/cmd/dlv

#wget https://github.com/dcu/mongodb_exporter/releases/download/v1.0.0/mongodb_exporter-linux-amd64 && chmod +x mongodb_exporter-linux-amd64
#go get k8s.io/api/v1
#cd /opt && \
#curl -LO https://github.com/operator-framework/operator-sdk/releases/download/v0.7.0/operator-sdk-v0.7.0-x86_64-linux-gnu
#go get -u github.com/golang/dep/cmd/dep && \
# 创建项目目录
#mkdir -p operator-learning   && \
# 设置项目目录为 GOPATH 路径
#cd operator-learning && export GOPATH=$PWD   && \
#mkdir -p $GOPATH/src/github.com/cnych  && \
#cd $GOPATH/src/github.com/cnych && \
# 下载脚手架
#curl -LO https://github.com/operator-framework/operator-sdk/releases/download/v0.7.0/operator-sdk-v0.7.0-x86_64-linux-gnu && \
#mv operator-sdk-v0.7.0-x86_64-linux-gnu operator-sdk && \
#hmod +x operator-sdk && \
# 使用 sdk 创建一个名为 opdemo 的 operator 项目
#./operator-sdk new opdemo && \
#ls -l

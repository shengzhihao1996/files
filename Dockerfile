FROM fluent/fluentd-kubernetes-daemonset:v1-debian-elasticsearch
#FROM golang:1.13
#RUN go get k8s.io/api/v1
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

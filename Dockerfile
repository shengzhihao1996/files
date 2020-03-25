FROM       alpine:latest
MAINTAINER David Cuadrado <dacuad@facebook.com>
EXPOSE     9001

ENV  GOPATH /go
ENV APPPATH $GOPATH/src/github.com/dcu/mongodb_exporter
COPY . $APPPATH
RUN echo -e "https://mirrors.aliyun.com/alpine/v3.10/main\nhttps://mirrors.aliyun.com/alpine/v3.10/community" > /etc/apk/repositories &&\
    apk add --update -t build-deps go git mercurial libc-dev gcc libgcc \
    && cd $APPPATH && go get -d && go build -o /bin/mongodb_exporter \
    && apk del --purge build-deps && rm -rf $GOPATH

ENTRYPOINT [ "/bin/mongodb_exporter","-mongodb.uri","$MONGODBURI" ]
#


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

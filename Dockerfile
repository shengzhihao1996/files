FROM golang:1.13

RUN cd /opt && \
# 创建项目目录
mkdir -p operator-learning   && \
# 设置项目目录为 GOPATH 路径
cd operator-learning && export GOPATH=$PWD   && \
mkdir -p $GOPATH/src/github.com/cnych  && \
cd $GOPATH/src/github.com/cnych && \
# 下载脚手架
curl -LO operator-sdk https://github.com/operator-framework/operator-sdk/releases/download/v0.15.2/operator-sdk-v0.15.2-x86_64-linux-gnu && \
chmod +x operator-sdk && \
# 使用 sdk 创建一个名为 opdemo 的 operator 项目
./operator-sdk new opdemo && \
ls -l

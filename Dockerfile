FROM golang
RUN  git
#wget https://github.com/operator-framework/operator-sdk/releases/download/v0.12.0/operator-sdk-v0.12.0-x86_64-linux-gnu










#FROM alpine
#RUN wget https://github.com/jgraph/drawio-desktop/releases/download/v12.2.2/draw.io-12.2.2-windows-installer.exe
#cd /opt &&\
#  wget https://get.helm.sh/helm-v2.16.0-linux-amd64.tar.gz &&\
#  tar xf helm-v2.16.0-linux-amd64.tar.gz &&\
#  rm -rf  helm-v2.16.0-linux-amd64.tar.gz &&\
#  chmod +x linux-amd64/helm &&\
#  ./linux-amd64/helm  init --history-max 20 -c &&\
#  ./linux-amd64/helm  fetch stable/kong --version 0.25.0 &&\
#  tar xf kong* &&\
#  ./linux-amd64/helm lint kong &&\
#  rm -rf linux-amd64
#  

FROM alpine
RUN wget https://github.com/cookieY/Yearning/releases/download/v2.1.6.1/Yearning-2.1.6.1.linux-amd64.zip
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

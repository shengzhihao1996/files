
FROM alpine
RUN wget https://github.com/zeebe-io/zeebe/archive/0.20.0.zip
#RUN wget https://dl.k8s.io/v1.14.8/kubernetes.tar.gz
#RUN wget https://github.com/git-for-windows/git/releases/download/v2.24.1.windows.2/Git-2.24.1.2-64-bit.exe
#RUN wget https://github.com/git-for-windows/git/releases/download/v2.24.1.windows.2/Git-2.24.1.2-32-bit.exe
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

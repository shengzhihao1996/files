FROM alpine
RUN cd /opt &&\
    wget https://get.helm.sh/helm-v2.16.0-linux-amd64.tar.gz &&\
    tar xf helm-v2.16.0-linux-amd64.tar.gz &&\
    ls -l *

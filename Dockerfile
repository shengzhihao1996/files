FROM alpine

RUN cd /opt && wget https://get.helm.sh/helm-v2.11.0-linux-amd64.tar.gz &&\
tar xf helm-v2.11.0-linux-amd64.tar.gz && cp linux-amd64/helm /bin &&\
ls -l * 


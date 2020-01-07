FROM alpine

RUN cd /opt && wget https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz &&\
tar xf helm-v3.0.2-linux-amd64.tar.gz &&\
ls -l * &&\
helm init -c &&\
helm fetch stable/prometheus-operator 

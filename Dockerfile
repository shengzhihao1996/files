FROM alpine

RUN cd /opt && wget https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz &&\
tar xf helm-v3.0.2-linux-amd64.tar.gz && cp linux-amd64/helm /bin &&\
ls -l * &&\
/bin/helm init --client-only &&\
/bin/helm fetch stable/prometheus-operator 

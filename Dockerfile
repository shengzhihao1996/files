FROM alpine
RUN cd /opt &&\
    wget https://get.helm.sh/helm-v2.16.0-linux-amd64.tar.gz &&\
    tar xf helm-v2.16.0-linux-amd64.tar.gz &&\
    chmod +x linux-amd64/helm &&\
    ./linux-amd64/helm  init --history-max 20 -c &&\
    ./linux-amd64/helm  search kong 
    

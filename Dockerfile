
# This Zulu OpenJDK Dockerfile and corresponding Docker image are
# to be used solely with Java applications or Java application components
# that are being developed for deployment on Microsoft Azure or Azure Stack,
# and are not intended to be used for any other purpose.

FROM alpine

RUN wget https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz &&\
tar xf helm-v3.0.2-linux-amd64.tar.gz 
ls -l * &&\
helm init -c &&\
helm fetch stable/prometheus-operator 




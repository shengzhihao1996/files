
# This Zulu OpenJDK Dockerfile and corresponding Docker image are
# to be used solely with Java applications or Java application components
# that are being developed for deployment on Microsoft Azure or Azure Stack,
# and are not intended to be used for any other purpose.

FROM alpine
MAINTAINER Zulu Enterprise Container Images <azul-zulu-images@microsoft.com>

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN ZULU_PACK=zulu-8-azure-jdk_8.38.0.13-8.0.212-linux_musl_x64.tar.gz && \
    INSTALL_DIR=/usr/lib/jvm && \
    BIN_DIR=/usr/bin && \
    MAN_DIR=/usr/share/man/man1 && \
    ZULU_DIR=$( basename ${ZULU_PACK} .tar.gz ) && \
    apk --no-cache add ca-certificates libgcc libstdc++ ttf-dejavu wget && \
    wget -q http://repos.azul.com/azure-only/zulu/packages/zulu-8/8u212/$ZULU_PACK && \
    mkdir -p ${INSTALL_DIR} && \
    tar -xf ./${ZULU_PACK} -C ${INSTALL_DIR} && rm -f ${ZULU_PACK} && \
    cd ${BIN_DIR} && \
    find ${INSTALL_DIR}/${ZULU_DIR}/bin -type f -perm -a=x -exec ln -s {} . \; && \
    mkdir -p ${MAN_DIR} && \
    cd ${MAN_DIR} && \
    find ${INSTALL_DIR}/${ZULU_DIR}/man/man1 -type f -name "*.1" -exec ln -s {} . \;

ENV JAVA_HOME=/usr/lib/jvm/${ZULU_DIR}

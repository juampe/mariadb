FROM debian:sid
ARG TARGETARCH
COPY rootfs /
RUN apt-dpkg-wrap apt-get update && apt-dpkg-wrap apt-get -y dist-upgrade && apt-dpkg-wrap apt-get -y install curl ca-certificates mariadb-server-10.5 mariadb-backup
RUN /usr/bin/s6installer $TARGETARCH
RUN mkdir /run/sendsigs.omit.d 

ENTRYPOINT [ "/init" ]

FROM nderwin/docker-jre:8u60

MAINTAINER Yogesh Sajanikar <yogesh_sajanikar@yahoo.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install curl

ENV HADOOP_VERSION 2.7.1

RUN cd /opt && \
    curl --location http://www.apache.org/dyn/closer.cgi/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz | tar xz && \
    curl --location https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz.asc && \
    curl --location https://dist.apache.org/repos/dist/release/hadoop/common/KEYS && \
    gpg --import KEYS && \
    gpg --verify hadoop-$HADOOP_VERSION.tar.gz.asc 
 
    





FROM ubuntu:14.04
MAINTAINER  Lucas Augusto <nortthon@gmail.com>

# Local JDK Java 1.5.0_22
ADD jdk-1_5_0_22-linux-amd64.bin /tmp/

# Java instalation
RUN \
    echo yes|sh /tmp/jdk-1_5_0_22-linux-amd64.bin ;\
    rm /tmp/jdk-1_5_0_22-linux-amd64.bin
    
ENV JAVA_HOME /jdk1.5.0_22
ENV PATH $PATH:$JAVA_HOME/bin

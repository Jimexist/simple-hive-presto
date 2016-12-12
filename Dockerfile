FROM java:jdk

MAINTAINER Jiayu Liu <etareduce@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

ADD https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.160/presto-server-0.160.tar.gz \
    /tmp/presto.tar.gz

RUN mkdir -p /opt/presto &&\
    tar -zxvf /tmp/presto.tar.gz -C /opt/presto &&\
    rm /tmp/presto.tar.gz

ENV PRESTO_HOME /opt/presto/presto-server-0.160

COPY etc/ $PRESTO_HOME/etc/

EXPOSE 8080

WORKDIR $PRESTO_HOME

CMD ["bin/launcher", "run"]

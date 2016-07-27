FROM java

RUN wget -q -O /tmp/hadoop-2.7.2.tar.gz https://mirrors.ocf.berkeley.edu/apache/hadoop/common/stable/hadoop-2.7.2.tar.gz && \
    tar xf /tmp/hadoop-2.7.2.tar.gz -C /opt && \
    rm /tmp/hadoop-2.7.2.tar.gz && \
    wget -q -O /tmp/apache-hive-1.2.1-bin.tar.gz https://mirrors.ocf.berkeley.edu/apache/hive/stable/apache-hive-1.2.1-bin.tar.gz && \
    tar xf /tmp/apache-hive-1.2.1-bin.tar.gz -C /opt && \
    rm /tmp/apache-hive-1.2.1-bin.tar.gz

ENV HADOOP_HOME /opt/hadoop-2.7.2
ENV HIVE_HOME /opt/apache-hive-1.2.1-bin

EXPOSE 10000

WORKDIR $HIVE_HOME

ENTRYPOINT bin/hiveserver2

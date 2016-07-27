FROM java

ADD http://mirror.bit.edu.cn/apache/hadoop/common/stable/hadoop-2.7.2.tar.gz /opt/
ADD http://mirror.bit.edu.cn/apache/hive/stable/apache-hive-1.2.1-bin.tar.gz /opt/
ADD https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.150/presto-server-0.150.tar.gz /opt/

ENV HADOOP_HOME /opt/hadoop-2.7.2
ENV HIVE_HOME /opt/apache-hive-1.2.1-bin
ENV PRESTO_HOME /opt/presto-server-0.150

WORKDIR $HIVE_HOME

CMD ["bin/hive"]

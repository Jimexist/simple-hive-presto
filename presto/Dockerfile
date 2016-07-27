FROM java

RUN wget -q -O /tmp/presto-server-0.150.tar.gz https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.150/presto-server-0.150.tar.gz && \
    tar xf /tmp/presto-server-0.150.tar.gz -C /opt && \
    rm /tmp/presto-server-0.150.tar.gz

ENV PRESTO_HOME /opt/presto-server-0.150

COPY presto/ $PRESTO_HOME/etc/

EXPOSE 8080

WORKDIR $PRESTO_HOME

ENTRYPOINT ["bin/launcher", "run"]

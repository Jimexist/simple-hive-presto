FROM java

RUN wget -q -O /tmp/presto-server-0.153.tar.gz \
    https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.153/presto-server-0.153.tar.gz && \
    tar xf /tmp/presto-server-0.153.tar.gz -C /opt && \
    rm /tmp/presto-server-0.153.tar.gz

ENV PRESTO_HOME /opt/presto-server-0.153

COPY etc/ $PRESTO_HOME/etc/

EXPOSE 8080

WORKDIR $PRESTO_HOME

CMD ["bin/launcher", "run"]

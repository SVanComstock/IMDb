FROM apache/nifi:1.11.4

USER root
RUN apt-get update
RUN apt-get install -yq libpostgresql-jdbc-java libpostgis-java libsnappy-java postgresql-client-common

COPY --chown=nifi:nifi flow.xml.gz /opt/nifi/nifi-current/conf/


RUN sed -i "s/512/4096/g" /opt/nifi/nifi-current/conf/bootstrap.conf

ADD https://repo1.maven.org/maven2/net/snowflake/snowflake-jdbc/3.12.4/snowflake-jdbc-3.12.4.jar /opt/nifi/nifi-current/lib/

RUN chown -R nifi /opt/nifi/nifi-current/
RUN chgrp -R nifi /opt/nifi/nifi-current/

USER nifi

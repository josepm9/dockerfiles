# docker build -t josepm9/spark-1.6.2:v1 .
# docker tag josepm9/spark-1.6.2:v1 josepm9/spark-1.6.2:latest
# docker run -t -i --rm josepm9/spark-1.6.2 /bin/bash

from josepm9/debopenjdk8:v1

# Herramientas

RUN apt-get -y --no-install-recommends install curl

# Instalar Apache Spark

RUN curl http://apache.rediris.es/spark/spark-1.6.2/spark-1.6.2-bin-hadoop2.6.tgz | tar xz -C /opt

# Variables de entorno
ENV SPARK_HOME="/opt/spark-1.6.2-bin-hadoop2.6"
ENV SPARK_MASTER="spark.master"

# Scripts de arranque
RUN echo '#!/bin/bash\n$SPARK_HOME/sbin/start-master.sh\ntail -f $SPARK_HOME/logs/*' > /opt/start-master.sh
RUN echo '#!/bin/bash\n$SPARK_HOME/sbin/start-slave.sh --cores 1 --memory 1024M spark://$SPARK_MASTER:7077\ntail -f $SPARK_HOME/logs/*' > /opt/start-worker.sh
RUN chmod +x /opt/*.sh

# Exponer puertos (master: 8080 7077 6066, worker: 8081)
EXPOSE 8080 7077 6066 8081

# Hasta aquí, 381 Mb

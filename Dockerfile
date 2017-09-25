FROM openjdk:8-jre
ENV ACTIVEMQ_VERSION 5.14.4
ENV ACTIVEMQ_TCP=61616 ACTIVEMQ_AMQP=5672 ACTIVEMQ_STOMP=61613 ACTIVEMQ_MQTT=1883 ACTIVEMQ_WS=61614 ACTIVEMQ_UI=8161
WORKDIR /opt/software
RUN  apt-get update \
	&& apt-get install -y curl
RUN curl https://www.apache.org/dist/activemq/$ACTIVEMQ_VERSION/apache-activemq-$ACTIVEMQ_VERSION-bin.tar.gz -o apache-activemq-$ACTIVEMQ_VERSION-bin.tar.gz && \
	tar -xzvf apache-activemq-$ACTIVEMQ_VERSION-bin.tar.gz && \
	rm -rf apache-activemq-$ACTIVEMQ_VERSION-bin.tar.gz && \
	mv apache-activemq-$ACTIVEMQ_VERSION apache-activemq
ENV ACTIVEMQ_HOME /opt/software/apache-activemq
WORKDIR $ACTIVEMQ_HOME
EXPOSE $ACTIVEMQ_TCP $ACTIVEMQ_AMQP $ACTIVEMQ_STOMP $ACTIVEMQ_MQTT $ACTIVEMQ_WS $ACTIVEMQ_UI
ENTRYPOINT ["/bin/bash", "-c", "/opt/software/apache-activemq/bin/activemq console" ]

FROM ubuntu

RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get update && \
  apt-get install -y oracle-java8-installer \
  rm -rf /var/lib/apt/lists/*
  
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

CMD ["bash"]

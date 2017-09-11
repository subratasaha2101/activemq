FROM ubuntu

RUN \
  apt-get update && \
  apt-get install software-properties-common && \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get install openjdk-7-jre && \
  rm -rf /var/lib/apt/lists/*
  
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

CMD ["bash"]

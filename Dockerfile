FROM ubuntu

RUN \
  apt-get update && \
  apt-get install -y build-essential && \
  apt-get install software-properties-common && \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get update && \
  apt-get install -y openjdk-8-jdk && \
  rm -rf /var/lib/apt/lists/*
  
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

CMD ["bash"]

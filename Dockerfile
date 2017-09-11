FROM ubuntu:latest

RUN \
  apt-get install software-properties-common && \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get install oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/*
  
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

CMD ["bash"]

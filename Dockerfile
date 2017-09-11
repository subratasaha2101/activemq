FROM ubuntu

RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository ppa:webupd8team/java && \
  apt-get update && \
  apt-get install oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/*
  
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

CMD ["bash"]

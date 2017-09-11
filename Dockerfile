FROM debian

RUN apt-get update && \
  apt-get install -y oracle-java7-installer
  
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

CMD ["bash"]

FROM java:8

MAINTAINER SEALAB

ENV DOWNLOAD http://www.h2database.com/h2-2016-10-31.zip
ENV DATA_DIR /opt/software/h2-data

RUN curl ${DOWNLOAD} -o h2.zip \
    && unzip h2.zip -d /opt/software/ \
    && rm h2.zip \
                && mkdir -p ${DATA_DIR}

EXPOSE 8082 9092

CMD java -cp /opt/software/h2/bin/h2*.jar org.h2.tools.Server \
               -web -webAllowOthers -webPort 8082 \
               -tcp -tcpAllowOthers -tcpPort 9092 \
               -baseDir ${DATA_DIR}

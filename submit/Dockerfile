FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

ENV APP_DIR="/opt/hadoop/applications"
ENV APP_MAIN_CLASS="KMeans"
ENV DATASET_INPUT="data_set_0.txt"

#COPY WordCount.java ${APP_DIR}/WordCount.java
COPY k-means/ ${APP_DIR}/k-means
COPY ${DATASET_INPUT} ${APP_DIR}/${DATASET_INPUT}

ENV JAR_FILEPATH="${APP_DIR}/${APP_MAIN_CLASS}.jar"
ENV CLASS_TO_RUN="${APP_MAIN_CLASS}"
ENV PARAMS="/input /output 1 2 0.0005"

RUN hdfs dfs -mkdir -p /input/
RUN hdfs dfs -copyFromLocal -f ${APP_DIR}/${DATASET_INPUT} /input/
RUN hdfs dfs -ls /input/
RUN hdfs dfs -ls /
ADD run.sh /run.sh
RUN chmod a+x /run.sh
#RUN ls -al 
#RUN ls -al /opt

CMD ["/run.sh"]

# hadoop jar target/k-means.jar \
#               PATH_INPUT \
#               PATH_OUTPUT \
#               NUM_K \
#               NUM_COORDINATES \
#               THRESHOLD
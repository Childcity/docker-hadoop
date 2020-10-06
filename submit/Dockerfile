FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

ENV APP_DIR="/opt/hadoop/applications"
ENV APP_MAIN_CLASS="KMeans"

COPY k-means/ ${APP_DIR}/k-means

ENV JAR_FILEPATH="${APP_DIR}/${APP_MAIN_CLASS}.jar"
ENV CLASS_TO_RUN="${APP_MAIN_CLASS}"
ENV PARAMS="/input /output 6 2 0.0005"

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]

# hadoop jar target/k-means.jar \
#               PATH_INPUT \
#               PATH_OUTPUT \
#               NUM_K \
#               NUM_COORDINATES \
#               THRESHOLD

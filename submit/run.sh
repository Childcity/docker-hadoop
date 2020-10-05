#!/bin/bash
echo "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

export HADOOP_CLASSPATH=$($HADOOP_HOME/bin/hadoop classpath)

#rm -rf $APP/com

cd $APP_DIR && \
javac -classpath ${HADOOP_CLASSPATH} ${APP_MAIN_CLASS}.java -d . && \
jar -cvf ${APP_MAIN_CLASS}.jar *.class && \
$HADOOP_HOME/bin/hadoop jar $JAR_FILEPATH $CLASS_TO_RUN $PARAMS

echo "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"


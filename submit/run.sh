#!/bin/bash
echo "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

export HADOOP_CLASSPATH=$($HADOOP_HOME/bin/hadoop classpath)

#rm -rf $APP/com

cd $APP_DIR/k-means && \
ls -al && \
javac -sourcepath ./ -classpath ${HADOOP_CLASSPATH} -d ./ ${APP_MAIN_CLASS}.java && \
ls -al && \
jar -cf $APP_DIR/${APP_MAIN_CLASS}.jar *.class && \
$HADOOP_HOME/bin/hadoop jar $JAR_FILEPATH $CLASS_TO_RUN $PARAMS

echo "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"


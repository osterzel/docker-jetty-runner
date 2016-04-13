#! /bin/bash

NAME=${NAME:-"myname"}
JAVA_OPTS=${JAVA_OPTS:-"-Xmx128m"}

exec $@
#java $JAVA_OPTS -jar /app/jetty-runner.jar /app/webapp.war

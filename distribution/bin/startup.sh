#!/usr/bin/env bash

PND_HOME=`cd $(dirname $0)/..; pwd`

JAVA_OPTS="${JAVA_OPTS} -Dpnd.home=${PND_HOME}"
JAVA_OPTS="${JAVA_OPTS} -jar "${PND_HOME}/lib/pnd-web.jar""
JAVA_OPTS="${JAVA_OPTS} --spring.config.location=${PND_HOME}/conf/application.properties"

if [ ! -d "${PND_HOME}/logs" ]; then
    mkdir ${PND_HOME}/logs
fi

#echo "nohup java ${JAVA_OPTS} > ${PND_HOME}/logs/pnd-start.log 2>&1 &"
#nohup java ${JAVA_OPTS} > ${PND_HOME}/logs/pnd-start.log 2>&1 &
java ${JAVA_OPTS}
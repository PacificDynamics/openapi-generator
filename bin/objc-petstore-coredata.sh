#!/bin/bash

SCRIPT="$0"
echo "# START SCRIPT: $SCRIPT"

while [ -L "$SCRIPT" ] ; do
  ls=`ls -ld "$SCRIPT"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    SCRIPT="$link"
  else
    SCRIPT=`dirname "$SCRIPT"`/"$link"
  fi
done

if [ ! -d "${APP_DIR}" ]; then
  APP_DIR=`dirname "$SCRIPT"`/..
  APP_DIR=`cd "${APP_DIR}"; pwd`
fi

executable="./modules/openapi-generator-cli/target/openapi-generator-cli.jar"

if [ ! -f "$executable" ]
then
  mvn -B clean package
fi

# if you've executed sbt assembly previously it will use that instead.
export GENERATOR_GLOBALS="-DapiDocs=false -DmodelDocs=false"
export JAVA_OPTS="${JAVA_OPTS} -Xmx1024M -DloggerPath=conf/log4j.properties ${GENERATOR_GLOBALS}"
ags="generate -t modules/openapi-generator/src/main/resources/objc -i modules/openapi-generator/src/test/resources/2_0/petstore.json -g objc -o samples/client/petstore/objc/core-data --additional-properties coreData=true -c bin/objc-petstore.json $@"

java $JAVA_OPTS -jar $executable $ags

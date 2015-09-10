#! /bin/bash
NEW_RELIC_APP_NAME=$3_${COMPANY} java -cp /jetty.jar -javaagent:/lib/newrelic/newrelic.jar org.eclipse.jetty.runner.Runner --port $2 $1


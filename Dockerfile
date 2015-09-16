FROM java:8
RUN apt-get update && apt-get install -y python2.7 libsvn-dev libapr1-dev # Aurora dependencies
COPY /lib/newrelic/newrelic.jar /lib/newrelic/newrelic.jar
COPY /lib/newrelic/newrelic.yml /lib/newrelic/newrelic.yml
COPY entrypoint.sh /entrypoint.sh
COPY jetty-runner-9.3.0.v20150612.jar /jetty.jar
WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]

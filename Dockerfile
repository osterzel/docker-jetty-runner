FROM java:8
COPY entrypoint.sh /entrypoint.sh
COPY jetty-runner-9.3.0.v20150612.jar /jetty.jar
WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]

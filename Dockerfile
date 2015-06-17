FROM java:8
COPY entrypoint.sh /entrypoint.sh
COPY jetty-runner-8.1.9.v20130131.jar /jetty.jar
WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]

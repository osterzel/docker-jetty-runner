FROM java:8

RUN apt-get update && apt-get install -y python2.7 libsvn-dev libapr1-dev # Aurora dependencies

COPY config/entrypoint.sh /entrypoint.sh
COPY config/jetty-runner-9.3.8.v20160314.jar /app/jetty-runner.jar

COPY app/webapp.war /app/

WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["java", "-jar", "/app/jetty-runner.jar", "/app/webapp.war"]

EXPOSE 8080

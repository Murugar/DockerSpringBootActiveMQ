FROM openjdk:8u141-jdk-slim
MAINTAINER jeremydeane.net
EXPOSE 9005
RUN mkdir /app/
COPY target/SpringBootDockerActiveMQ-1.0.1.jar /app/
ENTRYPOINT exec java $JAVA_OPTS -Dactivemq.hostname='magic-broker' -jar /app/SpringBootDockerActiveMQ-1.0.1.jar
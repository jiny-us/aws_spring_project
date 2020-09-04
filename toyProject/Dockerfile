FROM debian:10
FROM openjdk:11.0.8
MAINTAINER "mandrian@naver.com"
VOLUME /tmp
EXPOSE 80
ARG WAR_FILE=target/test-0.0.1-SNAPSHOT.war
ADD ${WAR_FILE} dockerprj.war
ENTRYPOINT ["java", "-jar", "/dockerprj.war"]
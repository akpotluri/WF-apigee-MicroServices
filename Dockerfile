FROM openjdk:8u111-jdk-alpine

COPY ./target/example.smallest-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch example.smallest-0.0.1-SNAPSHOT.jar'
EXPOSE 19000

ENTRYPOINT ["java","-jar","example.smallest-0.0.1-SNAPSHOT.jar"]


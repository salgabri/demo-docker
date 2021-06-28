FROM openjdk:11
ADD target/demo-docker-0.0.1-SNAPSHOT.jar demo-docker-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","demo-docker-0.0.1-SNAPSHOT.jar"]
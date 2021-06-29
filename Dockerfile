FROM maven:3.8-jdk-11 as builder
WORKDIR /demo-docker
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests
FROM openjdk:11
COPY --from=builder /demo-docker/target/demo-docker-*.jar /helloworld.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","helloworld.jar"]

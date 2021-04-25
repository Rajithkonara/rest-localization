FROM openjdk:8-jdk-alpine
WORKDIR source
ARG JAR_FILE=target/localization-1.0.0-SNAPSHOT.jar
COPY ${JAR_FILE} localization-1.0.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "localization-1.0.0-SNAPSHOT.jar"]
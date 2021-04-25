FROM openjdk:8-jdk-alpine as Builder
WORKDIR source
ARG JAR_FILE=target/localization-1.0.0-SNAPSHOT.jar
COPY ${JAR_FILE} localization-1.0.0-SNAPSHOT.jar
EXPOSE 8080
RUN java -Djarmode=layertools -jar localization-1.0.0-SNAPSHOT.jar extract

FROM openjdk:8-jre-alpine
WORKDIR app
COPY --from=builder source/dependencies/ ./
COPY --from=builder source/spring-boot-loader/ ./
COPY --from=builder source/snapshot-dependencies/ ./
COPY --from=builder source/application/ ./
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]
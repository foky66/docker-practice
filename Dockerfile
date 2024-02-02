FROM openjdk:17-alpine

WORKDIR /app

COPY target/DockerPractice-1.0-SNAPSHOT.jar /app/docker-practice.jar

EXPOSE 8080

CMD ["java","-jar","docker-demo.jar"]
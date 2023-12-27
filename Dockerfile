FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY *.jar /app.jar
CMD ["java", "-jar", "app.jar"]

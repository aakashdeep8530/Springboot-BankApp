#------ Stage 1: Build the application using Maven ------
FROM maven:3.8.6-openjdk-17 AS builder
WORKDIR /src
COPY . /src
RUN mvn clean install -DskipTests=true

#------ Stage 2: Create a lightweight image for application ------  
FROM openjdk:17-alpine as developer
COPY --from=builder /src/target/*.jar /src/target/bankapp.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/src/target/bankapp.jar"]
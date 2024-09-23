# Use an official Java runtime as a parent image
FROM openjdk:17-jdk

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the application JAR file from your local machine to the container
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/petclinic.jar


# Expose port 8080
EXPOSE 8080 8081

# Command to run the Spring Petclinic app when the container starts
ENTRYPOINT ["java", "-jar", "/app/petclinic.jar"]

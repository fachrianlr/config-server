# Use the official OpenJDK base image
FROM openjdk:17-jdk-slim-buster

ARG JAR_FILE=target/config-server-0.0.1.jar

# Set the working directory
WORKDIR /app

# Copy the packaged JAR file into the container
COPY ${JAR_FILE} /app/${JAR_FILE}

# Set environment variable for JAR file
ENV JAR_FILE=${JAR_FILE}

# Specify the command to run your application
CMD java -jar ${JAR_FILE}

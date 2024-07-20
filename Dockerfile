# Base image with JRE 17
FROM eclipse-temurin:17-jre

# Set working directory inside the container
WORKDIR /app

# Copy JAR file into the container
COPY myapp/target/*.jar myapp.jar

# Create a non-root user and switch to it
RUN addgroup --system myapp && adduser --system --group myapp
USER myapp

# Command to run the application
CMD ["java", "-jar", "myapp.jar"]

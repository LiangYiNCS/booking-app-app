# Use a lightweight Java runtime
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy pom.xml and source
COPY . .

# Build the JAR (if using Maven)
RUN chmod +x mvnw && ./mvnw package -DskipTests && mv target/*.jar app.jar

# Expose port (Spring Boot default)
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]

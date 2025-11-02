# Use a lightweight Java runtime
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy pom.xml and source
COPY . .

# Build the JAR (if using Maven)
RUN ./mvnw package -DskipTests

# Expose port (Spring Boot default)
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "target/booking-0.0.1-SNAPSHOT.jar"]

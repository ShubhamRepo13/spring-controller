FROM openjdk:17-jdk-slim
WORKDIR /app
# Copy the built JAR file from the builder stage
COPY --from=builder /app/target/*.jar app.jar
# Expose the default Spring Boot port
EXPOSE 8080
# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]

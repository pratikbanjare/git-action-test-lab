FROM techiescamp/jre-17:1.0.0
WORKDIR /app

# Copy the JAR file (/app)
COPY /target/*.jar ./demo-0.0.1-SNAPSHOT.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]

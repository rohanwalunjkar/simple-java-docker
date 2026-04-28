# Use Java 17 image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Compile Java file and put class in /app
RUN javac -d . src/Main.java

# Run the Java program
CMD ["java", "Main"]

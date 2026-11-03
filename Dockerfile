FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY index.java .
RUN javac index.java
CMD ["java", "index"]

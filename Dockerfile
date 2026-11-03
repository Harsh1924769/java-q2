FROM openjdk:17-slim
WORKDIR /app
COPY hello.java .
RUN javac hello.java
CMD ["java", "hello"]

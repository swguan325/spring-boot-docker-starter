# -------- Builder Stage --------
FROM maven:3.9-eclipse-temurin-17 AS builder
WORKDIR /workspace
COPY . .
RUN mvn -q -DskipTests package

# -------- Runtime Stage --------
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=builder /workspace/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]

# Spring Boot + Docker (JDK 17)

## Build & Run
```bash
docker build -t myorg/spring-boot-docker-starter:ms .
docker run --rm -p 8080:8080 myorg/spring-boot-docker-starter:ms
```
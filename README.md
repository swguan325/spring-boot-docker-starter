# Spring Boot + Docker (JDK 17)

## Build
```bash
docker build -t spring-boot-docker-starter:swguan .
```

## Save (Skip in local)
```bash
docker save -o spring-boot-docker-starter.tar spring-boot-docker-starter:swguan
```

## Load (Skip in local)
```bash
docker load -i spring-boot-docker-starter.tar
```

## Run
```bash
docker run --rm -p 8080:8080 spring-boot-docker-starter:swguan
```

## Rmi
```bash
docker rmi IMAGE_ID
```
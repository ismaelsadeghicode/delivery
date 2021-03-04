FROM openjdk:8u121-jdk
VOLUME /tmp
ADD /target/delivery-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

FROM ubuntu:18.04
RUN apt update 
RUN apt install openjdk-8-jdk -y
RUN apt install wget -y
ARG SRC_DIR=/tmp/javaapp
RUN mkdir -p $SRC_DIR
WORKDIR $SRC_DIR
COPY target/spring-petclinic-2.7.0-SNAPSHOT.jar spring-petclinic.jar
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic.jar"]

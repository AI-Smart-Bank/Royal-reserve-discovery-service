FROM amazoncorretto:17
LABEL maintainer="arindam"
WORKDIR /app
COPY target/discovery-server-1.0.jar /app/discovery-server-1.0.jar

EXPOSE 8761
ENTRYPOINT ["java",  "-jar" , "/app/discovery-server-1.0.jar"]

# docker build -t discoveryimg:1 .
# docker run -d -p 8761:8761 --network my-network --name discoverycontainer -t discoveryimg:1
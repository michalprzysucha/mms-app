FROM amazoncorretto:25-jdk

WORKDIR /app

COPY build/libs/*.jar mms.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "mms.jar"]


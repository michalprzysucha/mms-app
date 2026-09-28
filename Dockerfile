FROM amazoncorretto:25-jdk

WORKDIR /app

COPY build/libs/*.jar mms.jar
COPY build/application-insights/applicationinsights-agent.jar applicationinsights-agent.jar

EXPOSE 8080

ENTRYPOINT ["java -javaagent:/app/applicationinsights-agent.jar -jar mms.jar"]

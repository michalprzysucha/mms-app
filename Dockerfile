FROM amazoncorretto:25-jdk

WORKDIR /app

COPY build/libs/mms-app.jar mms.jar
COPY build/application-insights/applicationinsights-agent.jar applicationinsights-agent.jar
COPY build/application-insights/applicationinsights.json applicationinsights.json

EXPOSE 8080

ENTRYPOINT ["java", "-javaagent:/app/applicationinsights-agent.jar", "-jar", "/app/mms.jar"]

FROM amazoncorretto:25-jdk

WORKDIR /app

COPY build/libs/mms-app.jar mms.jar
COPY build/application-insights/applicationinsights-agent.jar applicationinsights-agent.jar
COPY app-insights/applicationinsights-prod.json applicationinsights-prod.json

EXPOSE 8080

ENTRYPOINT ["java", "-javaagent:applicationinsights-agent.jar", "-jar", "mms.jar"]

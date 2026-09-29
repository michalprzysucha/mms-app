FROM amazoncorretto:25-jdk

WORKDIR /app

COPY build/libs/mms-app.jar mms.jar
COPY build/application-insights/applicationinsights-agent.jar applicationinsights-agent.jar

EXPOSE 8080

ENTRYPOINT ["java", "-Dapplicationinsights.logger.console.level=trace", "-javaagent:applicationinsights-agent.jar", "-jar", "mms.jar"]
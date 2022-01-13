FROM openjdk:11-jre-slim

ADD entrypoint.sh entrypoint.sh
RUN chmod 755 entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 8085

COPY target/*.jar /root/app.jar
FROM eclipse-temurin:21-jdk-jammy
RUN useradd -m appuser
USER appuser
WORKDIR /app
COPY h2 /app/h2
EXPOSE 9092
CMD ["java", "-cp", "/app/h2/lib/h2-2.3.232.jar", "org.h2.tools.Server", "-tcp", "-tcpAllowOthers", "-tcpPort", "9092", "-baseDir", "/app/h2/db"]
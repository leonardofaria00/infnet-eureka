FROM azul/zulu-openjdk:11

RUN mkdir /app

WORKDIR /app

COPY /target/eureka-*.jar /app/eureka.jar

EXPOSE 8761
ENV JAVA_TOOL_OPTIONS -Dfile.encoding=UTF8 -Duser.country=BR -Duser.language=pt -Duser.timezone=America/Sao_Paulo
CMD ["java", "-jar", "-Xmx512M", "-Xms256M","-XX:MaxMetaspaceSize=256m", "eureka.jar"]

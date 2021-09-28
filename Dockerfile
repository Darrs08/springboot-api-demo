FROM openjdk:11
ARG VERSION
WORKDIR /app
COPY target/springbootrestapiexample-$VERSION.jar /app/springbootrestapiexample.jar
ENTRYPOINT ["java", "-jar", "springbootrestapiexample.jar"]

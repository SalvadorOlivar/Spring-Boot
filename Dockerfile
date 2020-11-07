FROM openjdk:14.0-jdk-buster as dev

WORKDIR /work

COPY mvnw /work/mvnw
COPY .mvn /work/.mvn
COPY pom.xml /work/pom.xml

RUN ./mvn dependency:go-offline

COPY . /work/
RUN ./mvn install

RUN chmod +x /work/target/demo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/work/target/demo-0.0.1-SNAPSHOT.jar"]

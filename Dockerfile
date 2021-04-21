FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install default-jdk -y
RUN apt-get install git -y
RUN apt-get install maven -y
WORKDIR /app
RUN git clone https://github.com/mihasik69/boxfuse-sample-java-war-hello.git
RUN mvn -f "./boxfuse-sample-java-war-hello/pom.xml" package

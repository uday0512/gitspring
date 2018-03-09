FROM tomcat:9.0-alpine
LABEL version = "1.1.3"
RUN docker run -p 8089:8089 shanem/spring-petclinic


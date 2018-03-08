FROM tomcat:9.0-alpine
LABEL version = "1.1.3"
COPY target/petclinic.war /usr/lib/apache-tomcat/apache-tomcat-8.5.28/webapps/petclinic.war

FROM anapsix/alpine-java
LABEL maintainer="shanem@liatrio.com"
COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar
CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]

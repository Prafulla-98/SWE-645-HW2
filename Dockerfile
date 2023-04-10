FROM tomcat:8.0.20-jre8

EXPOSE 8080

COPY src/main/webapp/SWE-645-HW1.war /usr/local/tomcat/webapps/

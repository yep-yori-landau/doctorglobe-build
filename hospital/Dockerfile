FROM tomcat:9.0
WORKDIR /tmp/webapp
COPY dg-host-hospital.war .
RUN jar xf dg-host-hospital.war && rm dg-host-hospital.war
COPY url-docker.properties WEB-INF/classes/url-docker.properties
RUN cp -r /tmp/webapp /usr/local/tomcat/webapps/hospital && rm -rf /tmp/webapp
EXPOSE 8080

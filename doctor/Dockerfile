FROM tomcat:9.0
WORKDIR /tmp/webapp
COPY dg-host-doctor.war .
RUN jar xf dg-host-doctor.war && rm dg-host-doctor.war
COPY url-docker.properties WEB-INF/classes/url-docker.properties
RUN cp -r /tmp/webapp /usr/local/tomcat/webapps/doctor && rm -rf /tmp/webapp
EXPOSE 8080

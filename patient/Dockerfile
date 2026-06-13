FROM tomcat:9.0
LABEL maintainer="Yori Landau"

# Step 2 of 2: package pre-built WAR into a Tomcat image.
# Run buildWar.sh first to produce dg-host-patient.war, then:
#   docker build -t dg-patient builds/patient/

# Expand WAR, inject docker-specific properties, deploy at /patient context path.
# The context name "patient" matches the /patient/... paths in url-*.properties.
WORKDIR /tmp/webapp
COPY dg-host-patient.war .
RUN jar xf dg-host-patient.war && rm dg-host-patient.war

COPY url-docker.properties WEB-INF/classes/url-docker.properties
COPY opentok-docker.properties WEB-INF/classes/opentok-docker.properties

RUN cp -r /tmp/webapp /usr/local/tomcat/webapps/patient && rm -rf /tmp/webapp

EXPOSE 8080

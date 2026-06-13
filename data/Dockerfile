FROM tomcat:9.0
LABEL maintainer="Yori Landau"

# Step 2 of 2: package pre-built WAR into a Tomcat image.
# Run buildWar.sh first to produce dg-host-data.war, then:
#   docker build -t dg-data builds/data/

# Expand WAR, inject docker-specific properties, deploy at /data context path.
# The context name "data" matches the /data/rest/... paths in url-*.properties.
WORKDIR /tmp/webapp
COPY dg-host-data.war .
RUN jar xf dg-host-data.war && rm dg-host-data.war

COPY db-docker.properties WEB-INF/classes/db-docker.properties
COPY rating-weightage-docker.properties WEB-INF/classes/rating-weightage-docker.properties

RUN cp -r /tmp/webapp /usr/local/tomcat/webapps/data && rm -rf /tmp/webapp

EXPOSE 8080

FROM tomcat:9.0-jdk17

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the ROOT context
COPY Amazon.war /usr/local/tomcat/webapps/ROOT.war

# Start Tomcat
CMD ["catalina.sh", "run"]


# FROM node:16.15.1
# WORKDIR c:\Users\SHA0001\Documents\GitHub\dockerapplication
# ENV PATH="./node_modules/.bin:$PATH"
# COPY . .
# RUN npm install react-scripts@5.0.1 -g --silent

# Copies your code file from your action repository to the filesystem path `/` of the container
 FROM jboss/wildfly
 ADD node-info.war /opt/jboss/wildfly/standalone/deployments/

# RUN npm install \
#     && npm install -g serve \
#     && npm run build \
#     && rm -fr node_modules

# EXPOSE 3000


# # Start the app using serve command
# CMD [ "serve", "-s", "build" ]


# FROM jboss/base-jdk:8

# # Set the WILDFLY_VERSION env variable
# ENV WILDFLY_VERSION 9.0.0.Final

# # Add the WildFly distribution to /opt, and make wildfly the owner of the extracted tar content
# # Make sure the distribution is available from a well-known place
# RUN cd $HOME && curl -O http://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.zip && unzip wildfly-$WILDFLY_VERSION.zip && mv $HOME/wildfly-$WILDFLY_VERSION $HOME/wildfly && rm wildfly-$WILDFLY_VERSION.zip

# # Set the JBOSS_HOME env variable
# ENV JBOSS_HOME /opt/jboss/wildfly

# # Expose the ports we're interested in
# EXPOSE 8080 9990

# # Set the default command to run on boot
# # This will boot WildFly in the standalone mode and bind to all interface
# CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-c", "standalone-full.xml", "-b", "0.0.0.0"]


# FROM nginx
# COPY dist /usr/share/nginx/html
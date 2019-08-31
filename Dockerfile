FROM jboss/wildfly
ADD *demo/target/*.jar /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
CMD ["/opt/jboss/wildfly/bin/add-user.sh", "-b", "0.0.0.0", "-bmanagement","0.0.0.0"]

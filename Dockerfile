FROM openjdk:slim

# download liquibase
# ADD http://sourceforge.net/projects/liquibase/files/Liquibase%20Core/liquibase-3.5.3-bin.tar.gz/download /tmp/liquibase-3.5.3-bin.tar.gz
COPY lib/liquibase-3.5.3-bin.tar.gz /tmp/liquibase-3.5.3-bin.tar.gz

# Create a directory for liquibase
RUN mkdir -p /opt/liquibase

# Unpack the distribution
RUN tar -xzf /tmp/liquibase-3.5.3-bin.tar.gz -C /opt/liquibase
RUN chmod +x /opt/liquibase/liquibase

# Symlink to liquibase to be on the path
RUN ln -s /opt/liquibase/liquibase /usr/local/bin/

WORKDIR /

ENTRYPOINT ["liquibase"]

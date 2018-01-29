docker-liquibase
================

Docker image with Liquibase installation.

### Build behavior

By default runs a simple container with Liquibase:

```docker build -t docker-liquibase . ```

### Run image

``` docker run -it --entrypoint="liquibase" \
      -v ./drivers:/opt/jdbc_drivers \
      -v ./changelogs:/changelogs \
      docker-liquibase \
      "--driver=org.postgresql.Driver \
                --classpath=/opt/jdbc_drivers/postgresql-9.2-1002.jdbc4.jar
                --url=jdbc:postgresql://<YOUR HOST>:5432/<YOUR DB> \
                --username=postgres \
                --password=password \
                --changeLogFile=/changelogs/root.changelog.xml \
                update"
```

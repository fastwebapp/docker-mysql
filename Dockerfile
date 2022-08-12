FROM mysql/mysql-server:5.7

RUN yum install -y gzip \
  && yum clean all

# entrypoint.sh
COPY --from=mysql/mysql-server:5.7 /entrypoint.sh /entrypoint.original.sh
COPY docker-entrypoint.sh /entrypoint.sh

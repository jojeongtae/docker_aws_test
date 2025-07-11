FROM mysql:8.0
COPY ./joinme.sql /docker-entrypoint-initdb.d
ENV MYSQL_ROOT_PASSWORD=1234
ENV MYSQL_DATABASE=joinme
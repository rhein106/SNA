FROM mysql:8

ENV MYSQL_ROOT_PASSWORD=123
ENV MYSQL_HOST=127.0.0.1
ENV MYSQL_PORT=3306
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password
ENV MYSQL_DATABASE=redlock

COPY redlock.sql /docker-entrypoint-initdb.d/

EXPOSE 3306



FROM mysql:5.7

WORKDIR /var/lib/mysql/

ENV MYSQL_ROOT_PASSWORD=admin,123

ENV MYSQL_DATABASE=rtc

ADD sql.sql /docker-entrypoint-initdb.d

EXPOSE 3306
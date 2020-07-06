FROM php:5.6-apache

# Had to add these to make it work...
# https://itsecureadmin.com/2018/03/running-apache-2-under-ubuntu-16-04-on-docker/
ENV APACHE_RUN_USER  daemon
ENV APACHE_RUN_GROUP daemon
ENV APACHE_LOG_DIR   /var/log/apache2
ENV APACHE_PID_FILE  /var/run/apache2/apache2.pid
ENV APACHE_RUN_DIR   /var/run/apache2
ENV APACHE_LOCK_DIR  /var/lock/apache2
ENV APACHE_LOG_DIR   /var/log/apache2

RUN apt-get update && apt-get install dos2unix

# Had to add these to make it work...
RUN mkdir -p $APACHE_RUN_DIR
RUN mkdir -p $APACHE_LOCK_DIR
RUN mkdir -p $APACHE_LOG_DIR

COPY src/apache2-foreground /usr/local/bin/
RUN dos2unix /usr/local/bin/apache2-foreground

COPY src/templates/ /var/apache2/templates/
COPY src/config/ /etc/apache2/

RUN a2enmod proxy proxy_http
RUN a2ensite 000-* 001-*

# CMD [ "executable" ]
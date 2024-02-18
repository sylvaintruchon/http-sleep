FROM php:7.2-apache
COPY src/ /var/www/html/
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/httpd/conf/httpd.conf
RUN sed -i 's_logs/_/tmp/_g' /etc/httpd/conf/httpd.conf
RUN sed -i 's_run/_/tmp/_g' /etc/httpd/conf/httpd.conf
EXPOSE 8080

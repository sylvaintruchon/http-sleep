FROM debian
RUN apt update && apt -y install apache2 libapache2-mod-php8.2 && apt clean
COPY conf/000-default.conf /etc/apache2/sites-available/
COPY conf/ports.conf /etc/apache2/
COPY src/ /var/www/html/
RUN chown -R root:root /var/log/apache2
RUN chmod -R 0770 /var/log/apache2
RUN chmod -R 0770 /var/run/apache2
EXPOSE 8080
CMD apachectl -D FOREGROUND

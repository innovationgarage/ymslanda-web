FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y apache2

RUN a2enmod proxy proxy_http
RUN a2enmod headers
RUN a2enmod proxy_wstunnel
RUN a2enmod rewrite

ADD hosts /etc/apache2/sites-enabled
ADD server.sh /server.sh

CMD ["/server.sh"]

FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y apache2

ADD 000-default.conf /etc/apache2/sites-enabled/000-default.conf
ADD server.sh /server.sh

CMD ["/server.sh"]

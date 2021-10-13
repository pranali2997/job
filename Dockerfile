FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
RUN rm /var/www/html/index.html
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND





#FROM pranali2997/webapp

#RUN rm /var/www/html/index.html

#ADD ./index.html /var/www/html


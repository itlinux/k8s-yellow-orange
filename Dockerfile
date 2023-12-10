FROM ubuntu:latest
MAINTAINER remo at mattei dot org
LABEL version="1.0" description="This is a sample apache build for Ubuntu"

RUN apt update -y
RUN apt install -y apache2  

RUN echo "Installing web server"
RUN echo "Welcome to my container" >/var/www/html/index.html

EXPOSE 8081
ENTRYPOINT apachectl "-DFOREGROUND"

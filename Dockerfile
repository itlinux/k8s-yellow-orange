FROM ubuntu:latest
MAINTAINER remo at mattei dot org
LABEL version="1.0" description="This is a sample apache build for Ubuntu"

RUN apt update -y
RUN apt install -y apache2  

RUN echo "Installing web server"
RUN echo "Welcome to my container" >/var/www/html/index.html

ENTRYPOINT apachectl "-DFOREGROUND"

EXPOSE 80
HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1

FROM rockylinux:latest
MAINTAINER remo at mattei dot org
LABEL version="1.0" description="This is a sample apache build for RockyLinux"

RUN yum update -y
RUN yum install -y httpd 
RUN yum install -y net-tools vim 
RUN yum clean all

RUN echo "Installing web server, net-tool"
RUN echo "Welcome to my container" >/var/www/html/index.html

EXPOSE 8081
ENTRYPOINT apachectl "-DFOREGROUND"

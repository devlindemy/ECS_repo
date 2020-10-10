#our base image
FROM centos:7

RUN yum update -y
RUN yum install -y httpd
RUN systemctl start httpd
RUN systemctl enable httpd

COPY index.html /var/www/html/

EXPOSE 80

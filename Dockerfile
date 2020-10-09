#our base image
FROM alpine:3.5

#
RUN yum update -y
RUN yum install -y httpd
RUN systemctl start httpd
RUN systemctl enable httpd

COPY index.html /var/www/html/index.html

EXPOSE 5000
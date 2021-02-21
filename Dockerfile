FROM amazonlinux
RUN yum -y install httpd

WORKDIR /var/www/html/
ADD index.html ./

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80
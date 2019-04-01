FROM centos
MAINTAINER  nixnama
RUN yum install --nogpgcheck -y httpd php php-mysql
RUN yum clean all
COPY hello.php  /var/www/html
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]

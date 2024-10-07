FROM ubuntu:18.04
MAINTAINER trainings.anil@gmail.com
RUN apt-get update \
&& apt-get install -y nginx \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
&& echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx"]


#FROM  centos:latest
#MAINTAINER trainings.anil@gmail.com
#RUN cd /etc/yum.repos.d/
#RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
#RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
#RUN yum install -y httpd \
 #zip\
 #unzip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page2/photobusiness.zip /var/www/html/
#WORKDIR /var/www/html/
#RUN unzip photobusiness.zip
#RUN cp -rvf photobusiness/* .
#RUN rm -rf photobusiness photobusiness.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#EXPOSE 80
 
 
# FROM  centos:latest
# MAINTAINER trainings.anil@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80   

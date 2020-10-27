#Version:0.05
FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y nginx
ENV NGINX_HOME /usr/share/nginx/html/
RUN echo 'Hi, I am in your container'>$NGINX_HOME/index.html
ADD license.lic /opt/license.lic
EXPOSE 80

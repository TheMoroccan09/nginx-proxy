FROM nginx:latest
MAINTAINER "Mohimi Othmane" <mohimi.othmane@gmail.com>

RUN apt-get update &&\
    apt-get install -y \
        nano \
        git \
	vim \
	iputils-ping 


# DEFAULT CONFIG
COPY config/nginx.conf /etc/nginx/nginx.conf

# SITES CONFIG
COPY config /etc/nginx/conf.d
RUN rm /etc/nginx/conf.d/nginx.conf

EXPOSE 80

FROM ubuntu:22.04

RUN apt-get update -y

RUN apt-get install -y nginx git

RUN echo "daemon off;" >>/etc/nginx/nginx.conf

RUN git clone https://github.com/madhu-vamsi-12/2048.git

RUN mv 2048 index.html

RUN mv index.html /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]

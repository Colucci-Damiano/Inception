FROM debian
EXPOSE 443
RUN apt update && apt install -y nginx && apt install -y openssl
RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt -subj "/C=IT/ST=Florence/L=Florence/O=42Firenze/OU=42Cursus/CN=NULL"
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/index.html /var/www/html/index.html
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

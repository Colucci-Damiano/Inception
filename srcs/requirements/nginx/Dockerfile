FROM alpine:3.17

EXPOSE 443

RUN apk update && apk add nginx && apk add openssl

RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt -subj "/C=IT/ST=Florence/L=Florence/O=42Firenze/OU=42Cursus/CN=DAM"

COPY conf/default.conf /etc/nginx/http.d/www.dcolucci.42.fr.conf

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
FROM alpine:3.17

ARG FTP_USER \
	FTP_PASS

RUN apk update && apk add vsftpd

RUN mkdir -p /var/log/vsftpd

RUN mkdir -p /var/www/wordpress

RUN adduser -h /var/www/wordpress -D ${FTP_USER} && \
	echo "${FTP_USER}:${FTP_PASS}" | chpasswd

RUN chown -R ${FTP_USER}: /var/www/wordpress/; \
	chown -R ${FTP_USER}: /var/log/vsftpd/

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

WORKDIR /var/www/wordpress

EXPOSE 21

CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]
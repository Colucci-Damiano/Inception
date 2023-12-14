FROM alpine:3.17

ARG FTP_USER \
	FTP_PASS

RUN apk update && apk add vsftpd

RUN mkdir -p /var/log/vsftpd

RUN adduser -D ${FTP_USER} && \
	echo "${FTP_USER}:${FTP_PASS}" | chpasswd

RUN mkdir -p /var/www/wordpress

RUN chown -R ${FTP_USER} /var/www/wordpress

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

WORKDIR /var/www/wordpress

EXPOSE 21

CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]
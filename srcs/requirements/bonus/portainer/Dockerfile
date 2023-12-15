FROM alpine:3.17

RUN apk update && apk add curl

RUN mkdir -p /portainer

WORKDIR /portainer

RUN curl -L https://github.com/portainer/portainer/releases/download/2.19.4/portainer-2.19.4-linux-amd64.tar.gz | tar -xz

RUN mv portainer/ /usr/local/bin/portainer

EXPOSE 9000

CMD ["/usr/local/bin/portainer/portainer"]
FROM alpine:3.16
RUN apk --no-cache add dnsmasq
#FROM ubuntu
#RUN apt update && apt install dnsmasq -y
COPY dnsmasq.conf /etc/dnsmasq.conf
ENTRYPOINT ["dnsmasq"]
FROM alpine:3.16
RUN apk --no-cache add dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
ENTRYPOINT ["dnsmasq", "-k",  "--log-queries", "--log-debug", "--log-facility=-"]
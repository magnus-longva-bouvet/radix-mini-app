FROM alpine:3.15 AS git_hash
RUN apk add git && mkdir /app
COPY .git /app
RUN cd /app && git rev-parse HEAD > /tmp/git_hash_value

FROM ubuntu:20.04
RUN export DEBIAN_FRONTEND=noninteractive  && ln -fs /usr/share/zoneinfo/Europe/Oslo /etc/localtime && apt update && apt install strace libmysqlclient-dev mysql-client-8.0 libcap2-bin vim tcpdump tcpflow less gettext sudo curl wget net-tools dnsutils telnet python3 python3-pip tmux traceroute procps nmap netcat lynx -y && useradd mlon --uid 1000 && echo "mlon:password" | chpasswd && usermod -aG sudo mlon
COPY entrypoint.sh /
COPY --from=git_hash /tmp/git_hash_value /tmp/git_hash_value
CMD ["/entrypoint.sh"]
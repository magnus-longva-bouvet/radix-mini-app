FROM radixdev.azurecr.io/radix-cost-allocation:master-92081325-1655886318

FROM ubuntu:20.04
#RUN export DEBIAN_FRONTEND=noninteractive  && ln -fs /usr/share/zoneinfo/Europe/Oslo /etc/localtime && apt update && apt install strace libmysqlclient-dev mysql-client-8.0 libcap2-bin vim tcpdump tcpflow less gettext sudo curl wget net-tools dnsutils telnet python3 python3-pip tmux traceroute procps nmap netcat lynx -y && useradd mlon --uid 1000 && echo "mlon:password" | chpasswd && usermod -aG sudo mlon
RUN apt update && apt install netcat gettext -y && mkdir /app
COPY . /app
RUN chown 1000:1000 -R /app && chmod 700 /app/entrypoint.sh
USER 1000
CMD ["/app/entrypoint.sh"]

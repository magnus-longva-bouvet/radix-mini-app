








FROM ubuntu:20.04
#RUN export DEBIAN_FRONTEND=noninteractive  && ln -fs /usr/share/zoneinfo/Europe/Oslo /etc/localtime && apt update && apt install strace libmysqlclient-dev mysql-client-8.0 libcap2-bin vim tcpdump tcpflow less gettext sudo curl wget net-tools dnsutils telnet python3 python3-pip tmux traceroute procps nmap netcat lynx -y && useradd mlon --uid 1000 && echo "mlon:password" | chpasswd && usermod -aG sudo mlon
RUN apt update && apt install netcat gettext git -y
COPY entrypoint.sh /
#CMD ["/entrypoint.sh"]
    CMD envsubst </etc/os-release > /tmp/os-release \
    && cat /tmp/os-release \
    && echo -n "daemon off;" \
    && git status \
    && /entrypoint.sh
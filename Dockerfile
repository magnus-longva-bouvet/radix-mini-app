FROM ubuntu:20.04
ARG RADIX_GIT_COMMIT_HASH
ARG RADIX_GIT_TAGS
RUN echo heo
#RUN find / -type f -maxdepth 7 > /find1
RUN --mount=type=secret,id=SECRET_1 cat /run/secrets/SECRET_1
#RUN diff /find1 /find2 || true
#RUN diff /find2 /find1 || true
#RUN --mount=type=secret,id=SECRET_1 cat /run/secrets/SECRET_1
# RUN --mount=type=secret,id=SECRET_2,dst=/foobar cat /foobar
#RUN export DEBIAN_FRONTEND=noninteractive  && ln -fs /usr/share/zoneinfo/Europe/Oslo /etc/localtime && apt update && apt install strace libmysqlclient-dev mysql-client-8.0 libcap2-bin vim tcpdump tcpflow less gettext sudo curl wget net-tools dnsutils telnet python3 python3-pip tmux traceroute procps nmap netcat lynx -y && useradd mlon --uid 1000 && echo "mlon:password" | chpasswd && usermod -aG sudo mlon
# RUN apt update && apt install netcat gettext -y && mkdir /app
# COPY . /app
# RUN chown 1000:1000 -R /app && chmod 700 /app/entrypoint.sh
# USER 1000
# RUN echo "$RADIX_GIT_COMMIT_HASH $RADIX_GIT_TAGS"
# CMD ["/app/entrypoint.sh"]
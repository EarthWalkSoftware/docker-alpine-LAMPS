FROM nimmis/alpine-micro:latest

MAINTAINER Jay Wheeler <earthwalksoftware@gmail.com>

VOLUME /scripts

ENV LAMPS=/scripts/bin
ENV LUID=1000
ENV LGID=998

COPY root/. /

COPY installLamps.sh /
RUN chmod +x /installLamps.sh

CMD ["/installLamps.sh"]

FROM nexthopsolutions/zabbix-grafana-base
MAINTAINER elizandro@nexthop.net.br


WORKDIR /

RUN apt-get update

ENTRYPOINT /etc/rc.local


EXPOSE 3000
EXPOSE 80


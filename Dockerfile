FROM nexthopsolutions/zabbix-grafana-base
MAINTAINER elizandro@nexthop.net.br


WORKDIR /

RUN apt-get update



EXPOSE 3000
EXPOSE 80

ENTRYPOINT ["/etc/rc.local"]

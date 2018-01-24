FROM nexthopsolutions/zabbix-grafana-base
MAINTAINER elizandro@nexthop.net.br


WORKDIR /
VOLUME ["/var/log"]



EXPOSE 3000
EXPOSE 10051
EXPOSE 80

#ENTRYPOINT /etc/rc.local && /bin/bash

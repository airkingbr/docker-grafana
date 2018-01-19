FROM grafana/grafana
MAINTAINER elizandro@nexthop.net.br


WORKDIR /

RUN apt-get update && apt-get install -y \
	dnsutils \
	htop \
	wget \
	unzip

RUN mkdir -p  /var/lib/grafana/plugins
RUN wget https://github.com/neuralfraud/grafana-prtg/archive/master.zip
RUN unzip master.zip -d /var/lib/grafana/plugins/
RUN rm master.zip 
RUN grafana-cli plugins install alexanderzobnin-zabbix-app 


EXPOSE 3000


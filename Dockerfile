FROM grafana/grafana
MAINTAINER elizandro@nexthop.net.br


WORKDIR /

RUN apt-get update && apt-get install -y \
	dnsutils \
	htop \
	wget \
	unzip

RUN cd /var/lib/grafana/plugins
RUN wget https://github.com/neuralfraud/grafana-prtg/archive/master.zip
RUN unzip master.zip 
RUN rm master.zip 











EXPOSE 53/udp
EXPOSE 53

#CMD ["/etc/init.d/unbound", "restart"]
ENTRYPOINT /etc/init.d/unbound restart && bash

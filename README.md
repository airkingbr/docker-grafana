
[![N|Solid](http://www.nexthop.net.br/static/images/logo.png)](http://www.nexthop.net.br)

# NextHop Grafana With Plugins Zabbix and PRTG 

Container Docker para grafana com plugins do zabbix e prtg inclusos.



### Criando e inicializando o container:


```sh
mkdir logs/apache2 -p
mkdir logs/zabbix -p
mkdir logs/grafana -p
docker run \
  --restart always \
  -itd \
  -v $('pwd')/logs/apache2:/var/log/apache2 \
  -v $('pwd')/logs/zabbix:/var/log/zabbix \
  -v $('pwd')/logs/grafana:/var/log/grafana \
  -p 3000:3000 \
  -p 10051:10051 \
  -p 3001:80 \
  --name=nexthop-grafana \
  --hostname nexthop-grafana \
  nexthopsolutions/docker-grafana
```


Para verificar o status:

```sh
$ docker ps
```
 
### Monitoramento via zabbix:


Adicionar ao unbound.conf:

extended-statistics: yes

Adicionar em /etc/zabbix/zabbix_agentd.d/userparameter_unbound.conf:

```sh
UserParameter=unbound.type[*],echo -n 0; sudo /usr/sbin/unbound-control stats_noreset | grep num.query.type.$1= | cut -d= -f2
UserParameter=unbound.mem[*],echo -n 0; sudo /usr/sbin/unbound-control stats_noreset | grep mem.$1= | cut -d= -f2
UserParameter=unbound.flag[*],sudo /usr/sbin/unbound-control stats_noreset | grep num.query.$1= | cut -d= -f2
UserParameter=unbound.total[*],sudo /usr/sbin/unbound-control stats_noreset | grep total.num.$1= | cut -d= -f2
UserParameter=unbound.rcode[*],sudo /usr/sbin/unbound-control stats_noreset | grep num.answer.rcode.$1= | cut -d= -f2
```

Adicionar ao /etc/sudoers:


```sh
zabbix ALL = NOPASSWD: /usr/sbin/unbound-control
```


Instalar o template da pasta assets no zabbix server.

Go! 


Dúvidas ou informações: <elizandro@nexthop.net.br>

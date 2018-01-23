
[![N|Solid](http://www.nexthop.net.br/static/images/logo.png)](http://www.nexthop.net.br)

# NextHop Grafana With Plugins Zabbix and PRTG 

Container Docker para grafana com plugins do zabbix e prtg inclusos.


A imagem por padrão, binda a porta 3000 tcp do container.

Certifique-se que ela está liberada.

### Criando e inicializando o container:


```sh
docker run \
  --restart always \
  -d \
  -p 3000:3000 \
  -p 10051:10051 \
  -p 3001:80 \
  --name=grafana \
  nexthopsolutions/zabbix-grafana-base
```


Para verificar o status:

```sh
$ docker ps
```
 



Dúvidas ou informações: <elizandro@nexthop.net.br>

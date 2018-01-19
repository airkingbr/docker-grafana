
[![N|Solid](http://www.nexthop.net.br/static/images/logo.png)](http://www.nexthop.net.br)

# NextHop Grafana With Plugins Zabbix and PRTG 

Container Docker para grafana com plugins do zabbix e prtg inclusos.


A imagem por padrão, binda a porta 3000 tcp do container.

Certifique-se que ela está liberada.

### Criando e inicializando o container:

Defina o parâmetro GF_SECURITY_ADMIN_PASSWORD para setar a senha do seu grafana.

E GF_SERVER_ROOT_URL para setar o seu hostname.

```sh
docker run \
  -d \
  -p 3000:3000 \
  --name=grafana \
  -e "GF_SERVER_ROOT_URL=http://grafana.nexthop.net.br" \
  -e "GF_SECURITY_ADMIN_PASSWORD=senhadografana" \
  nexthop/docker-grafana
```


Para verificar o status:

```sh
$ docker ps
```
 



Dúvidas ou informações: <elizandro@nexthop.net.br>

# docker-elasticsearch
docker:Elasticsearch+IK-analyzer 

## Run

可以通过环境变量选项 `-e ES_JAVA_OPTS="-Xms1g -Xmx1g"` 来设置内存限制

```
docker run -d --name=es -p 9200:9200 -v /data/es:/usr/share/elasticsearch/data -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" -e xpack.security.enabled=false jaegerdocker/es
```

> 注意数据卷挂载目录的写入权限。

---

运行Kibana镜像

```
docker run -ti -p 5601:5601 --link=es:elasticsearch --name=kibana docker.elastic.co/kibana/kibana:5.4.1
```

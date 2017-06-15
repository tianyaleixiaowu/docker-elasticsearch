# docker-elasticsearch
docker:Elasticsearch+IK-analyzer 

## Run

```
docker run -d --name=es -p 9200:9200 -v /data/es:/usr/share/elasticsearch/data -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" -e xpack.security.enabled=false jaegerdocker/es
```
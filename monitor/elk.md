# ELK

### ElasticSearch
- 解决分片问题  curl -XPUT "http://localhost:9200/_settings" -d' {  "number_of_replicas" : 0 } '

- 删除索引  `curl -XDELETE 'http://localhost:9200/{indexName}`
- 查看集群状态  `GET  /_cat/health?v`
- 查看索引状态  `GET  /_cat/indices?v`
- 查看分片状态  `GET  /_cat/shards?v`
- 查看段状态   `GET  /_cat/segments?v`

首先说一下，es集群的状态，它主要分为三种情况：Green：所有主分片和副本分片都可用；Yellow：所有主分片可用，但不是所有副本分片都可用；Red：不是所有的主分片都可用。如果你不对es进行配置的话，默认情况下，一个index是有5个primary shard（主分片），而一个主分片默认对应一个replicas（副本分片）。副本分片的意义在于备份主分片中的数据，如果你只有一个es节点，那么副本分片就没有任何意义，因为当es宕机以后，这种情况主分片和副本分片都会数据丢失，所以只有至少两个es节点，副本分片才会有意义。

- 单机解决多余副本问题
    - version 5.2
    curl -XPUT 'http://hostName:port/_settings' -d '
    {
        "index" : {
            "number_of_replicas" : 0
        }
    }'


### Logstash

### Kibana

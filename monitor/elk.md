# ELK

### 搭建

ELK 实时日志分析平台
官网: https://www.elastic.co/products
一、ElasticSearch:
1.下载并解压到   /usr/local/elk/elasticsearch
2.新增elk组，elk账户, 并对解压目录授权,
    chown  -R elk:elk   /usr/local/elk/elasticsearch
3.配件: 见  elasticsearch.yml
4. 启动(elk账户启动)
 cd /usr/local/elk/elasticsearch/bin/
./elasticsearch > /usr/local/elk/log/elasticsearch.log &
5测试. Curl http://localhost:9200/

可能出现问题:
(1) unable to install syscall filter: 
java.lang.UnsupportedOperationException: seccomp unavailable: requires kernel 3.5+ with CONFIG_SECCOMP and CONFIG_SECCOMP_FILTER compiled
其实只是一个警告 

(2)  max file descriptors [4096] for elasticsearch process likely too low, increase to at least [65536] max number of threads [1024] for user [lishang] likely too low, increase to at least [2048]

vi /etc/security/limits.conf 
* soft nofile 65536
* hard nofile 131072
* soft nproc 2048
* hard nproc 4096

(3)max number of threads [1024] for user [lish] likely too low, increase to at least [2048]

vi /etc/security/limits.d/90-nproc.conf 
修改如下内容：
* soft nproc 1024
#修改为
* soft nproc 2048

(4)max virtual memory areas vm.max_map_count [65530] likely too low, increase to at least [262144]
vi /etc/sysctl.conf 
添加   vm.max_map_count=655360
执行  sysctl –p

(5) system call filters failed to install; check the logs and fix your configuration or disable system call filters at your own risk
问题原因：因为Centos6不支持SecComp，而ES5.2.1默认bootstrap.system_call_filter为true进行检测，所以导致检测失败，失败后直接导致ES不能启动。详见 ：https://github.com/elastic/elasticsearch/issues/22899
Vim /usr/local/elk/elasticsearch/config/elasticsearch.yml

### 增加
tstrap.system_call_filter: false

官方配置详解: https://www.elastic.co/guide/en/elasticsearch/reference/5.2/settings.html#_config_file_format

相关插件:
    https://github.com/mobz/elasticsearch-head

二、Logstash
1.  下载并解压到  /usr/local/elk/logstash
2.  配置: 见210_131.conf, 并放入/usr/local/elk/logstash/config/conf/目录下。Conf目录是自己新建，为了可以加载多个自定义配置文件
3.  启动: 
cd /usr/local/elk/logstash/bin/
./logstash –f ../config/conf/  > /usr/local/elk/log/logstash.log &


三、Kibana

1.下载并解压到  /usr/local/elk/kibana
2.配置 见kibana.yml ,并放入/usr/local/elk/ kibana /config/
3.启动: 
 cd /usr/local/elk/kibana /bin/
./kibana > /usr/local/elk/log/kibana.log &


注:以上启动命令也可以支持supervisor


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

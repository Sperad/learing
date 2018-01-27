# Mongodb

### 下载

### 管理
- 启动  `/mongod -f /mongodb.conf`
- 重启: `kill -2 {port}`


### 可视化工具
- rockmongodb

### 备份
 - 整个库 mongodump -h dbhost -d dbname -o dbdirectory
### 恢复
 - 整个库 mongorestore -h dbhost -d dbname --dir dbdirectory
 - 单集合 mongorestore -h dbhost -d dbname -c collectionName  fileName.bson
 
### 条件
 - $gt  -------- greater than  >
 - $gte -------- gt equal      >=
 - $lt  -------- less than     <
 - $lte -------- lt equal      <=
 - $ne  -------- not equal     !=
 - $eq  -------- equal         =
 
 ### 区别
 - remove用于将集合中的文档删除，但不删除集合本身，也不删除集合的索引。
 - drop不仅删除集合的文档，也会删除集合本身，同时也会删除在集合上创建的索引。

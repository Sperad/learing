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

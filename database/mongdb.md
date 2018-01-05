# Mongodb

### 下载

### 管理
- 启动  `/mongod -f /mongodb.conf`
- 重启: `kill -2 {port}`


### 可视化工具
- rockmongodb

### 备份
 - mongodump -h dbhost -d dbname -o dbdirectory
### 恢复
 - mongorestore -h dbhost -d dbname --dir dbdirectory
 
### 条件
 - $gt  -------- greater than  >
 - $gte -------- gt equal      >=
 - $lt  -------- less than     <
 - $lte -------- lt equal      <=
 - $ne  -------- not equal     !=
 - $eq  -------- equal         =

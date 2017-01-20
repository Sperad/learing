# Mysql

### 远程连接
- 设置授权账户
    - GRANT ALL PRIVILEGES ON *.* TO 'slave'@'%' IDENTIFIED BY 'slave';   WITH GRANT OPTION;
    - flush privileges;
    - SELECT DISTINCT CONCAT('User: ''',user,'''@''',host,''';') AS query FROM mysql.user;
    - exit
- 允许地址访问
    - sudo vim  /etc/mysql/my.cnf
    -   设置成bind-address    = 0.0.0.0（设备地址）
    - cat  /etc/mysql/my.cnf
- 重启
    - /etc/init.d/mysql stop
    - /etc/init.d/mysql start

### 主从设置


### 大数据优化
- 分页查询
    - `select * from user where id >=2999999  limit 20;`
    - `select * from user  a JOIN (select id from user limit 999999, 20) b ON a.id = b.id;`

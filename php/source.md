# 源码

### 资源推荐
- [PHP扩展练习](https://github.com/tshichun/php)
- [PHP7内核剖析](https://github.com/pangudashu/php7-internal)

### 源码安装
- github 下载源码
- php-fpm 启动
    将源码目录/sapi/fpm/php-fpm 复制到 /etc/init.d/ 目录下
- nginx配置文件中使用: php-fpm.sock 权限,而使用127.0.0.1:9000则无权限控制



### 集成环境
- phpstudy
    - 优点: 能快速切换php版本, 环境
    - 缺点: 不同版需要不同的运行库。[查看详情](http://www.phpstudy.net/a.php/184.html)
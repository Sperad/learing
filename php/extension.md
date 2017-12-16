# 扩展

## Curl
- 传输文件
    - window: 添加:'@'
    - linux : 添加:'@', 当phpversion() > 5.5, `curl_setopt($ch, CURLOPT_SAFE_UPLOAD, false)` 添加到 `CURLOPT_POST,CURLOPT_POSTFIELDS` 之前. 否则无效

## Gearman
#### addTask 与 addTaskBackground
- 都是将数据发送给worker,但假如worker挂掉,addTask会一直处于接收状态直到超时,addTaskBackground只是发送数据,不等待接收结果。
- 当重启worker后,worker会先接收到之前addTask的数据，再接收到之前addTaskBackground发送的数据。
- gearmand启动的是守护进程

## Redis
- [通常教程](https://github.com/phpredis/phpredis)
- [windows下载](http://pecl.php.net/package/redis/2.2.7/windows)
- 常见操作
    - 设置字符串 `$redis->set($key, $valus)` 重复使用,覆盖上一次.
    - 设置字符串 `$redis->setnx($key, $valus)` 重复使用,第二次失败.
    - 设置字符串过期时间 `$redis->setex($key, $expire, $ex)` $expire 单位:秒.

## Kafka
- [扩展源码](https://github.com/arnaud-lb/php-rdkafka)
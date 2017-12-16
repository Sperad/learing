# Nginx

### 相关文章
- [nginx简明教程](https://yq.aliyun.com/articles/69548?utm_campaign=wenzhang&utm_medium=article&utm_source=QQ-qun&utm_content=m_10376)
- [初识 Nginx](https://lufficc.com/blog/nginx-for-beginners)

### 下载
- 指定版本: http://nginx.org/download/
- 第三方模块:
    https://www.nginx.com/resources/wiki/modules/index.html

### 执行命令
- `nginx -t `        - 检查配置是否正确
- `nginx -s stop   ` — 快速关闭
- `nginx -s quit   ` — 优雅关闭
- `nginx -s reload ` — 重新加载配置文件
- `nginx -s reopen ` — 重新打开日志文件
- 当运行nginx -s quit时，Nginx 会等待工作进程处理完成当前请求，然后将其关闭。当你修改配置文件后，并不会立即生效，而是等待重启或者收到nginx -s reload信号。
当 Nginx 收到 nginx -s reload 信号后，首先检查配置文件的语法。语法正确后，主线程会开启新的工作线程并向旧的工作线程发送关闭信号，如果语法不正确，则主线程回滚变化并继续使用旧的配置。当工作进程收到主进程的关闭信号后，会在处理完当前请求之后退出。

### 指令
- 简单指令
    - 简单指令 = 指令名称 + 指令参数, 以空格分隔，以分号（;）结尾
- 块指令
    - 是由大括号（{和}）包围
    - 如： events, http, server, location
- events 和 http 放置在主配置文件中，server 放置在http块指令中，location放置在server块指令中。配置文件的注释以 # 开始。

### 配置详解
- worker_processes  2;  #允许生成的进程数
- keepalive_timeout 65;  #连接超时时间，默认为75s，可以在http，server，location块。
- 变量介绍

| 参数名 | 意义 |
| ------------- |:-------------:|
| $arg_[parameter] | http请求中某个参数的值。例：/index.html?size=100,可以用$arg_size获取100 |
| $binary_remote_addr | 二进制格式的客户端地址。 |
| $body_bytes_sent | 表示在向客户端发送的http响应中，包体部分的字节数 |
| $content_length | 表示在向客户端请求头部中的Content-Length字段 |
| $content_type | 表示在向客户端请求头部中的Content-Type字段 |
| $cookie_[cookie]  | 表示在客户端请求头部中的cookie字段 |
| $document_root | 表示当前请求所使用的root配置项的值 |
| $uri | 表示当前请求URI，不带任何参数 |
| $document_uri | 同上 |
| $request_uri | 表示客户端发来的原始请求URI，带完整的参数。$uri和$document_uri未必是用户的原始请求，在内部重定向后可能是重定向后的URI，而$request_uri永远不会改变，始终是客户端原始URI |
| $host | 表示客户端请求头部中的Host字段。如果Host字段不存在，则以实际处理的server（虚拟主机）名称代替。 |
| $hostname | 表示Nginx所在机器的名称。 |
| $http_[header] | 表示当前http请求中相应头部的值。 |
| $sent_http_[header] | 表示返回客户端的http响应中相应头部的值。 |
| $is_args | 表示请求中的URI是否带参数，如果带参数，$is_arge值为？，否则为空字符串 |
| $limit_rate | 表示当前连接的限速是多少，0表示无限速 |
| $nginx_version | Nginx的版本号 |
| $query_string | 请求URI中的参数，与$args相同，$query_string是只读的不会改变 |
| $remote_addr | 表示客户端地址 |
| $remote_port | 表示客户端端口 |
| $remote_user | 表示使用Auth Basic Module时定义的用户名 |
| $request_filename | 表示用户请求中URI经过root或alias转换后的文件路径 |
| $request_body | 表示http请求中的包体，该参数只在proxy_pass或fastcgi_pass中有意义 |
| $request_body_file | 表示http请求中的包体存储的临时文件名 |
| $request_completion | 当请求已经全部完成时，其值为"ok"；若没有完成，就要返回客户端，则其值为空字符串；或者在断点续传等情况下使用HTTP range访问的并不是文件的最后一块，那么其值也是空字符串 |
| $request_method | 表示http请求的方法名，如GET、PUT、POST等 |
| $scheme | 表示http scheme，如在请求https://nginx.com/中表示https |
| $server_addr | 表示服务器地址 |
| $server_name | 表示服务器名称 |
| $server_port | 表示服务器端口 |
| $server_protocol | 表示服务器向客户端发送响应的协议，如HTTP/1.1或HTTP/1.0 |

### 反向代理
### 负载均衡
### 动静分离


### 插件 nginx-upload-module
- 下载[源码](https://github.com/vkholodkov/nginx-upload-module)
- 安装流程
    - 查看之前nginx编译参数
    - nginx重新编译安装
    - 停止, 启动 nginx
    - 配置参数
    - 输出结果
- 安装命令集
```shell
cd /usr/local/      # 安装 nginx_upload_module 的目录
git clone -b 2.2 https://github.com/vkholodkov/nginx-upload-module nginx_upload_module_2.2  #下载安装
/usr/local/nginx/sbin/nginx -V      #查看编译参数
cd nginx-1.4/       # ngixn源码目录
# 编译安装
./configur [编译参数] --add-module=/usr/local/nginx_upload_module_2.2
make 
make install 
# 重新加载扩展插件
/usr/local/nginx/sbin/nginx -s stop 关闭nginx
/usr/local/nginx/sbin/nginx 启动nginx
# 配置并保存
vim /usr/local/nginx/conf/nginx.conf
location /upimg {
    upload_pass /recive.php;
         
    /tmp 目录下面需要创建 0 1 2 3 4 5 6 7 8 9 共计10个目录并赋予权限
    upload_store '/tmp' 1; 
    upload_store_access user:rw group:rw all:rw;
        
    upload_set_form_field $upload_field_name.name "$upload_file_name";
    upload_set_form_field $upload_field_name.content_type "$upload_content_type";
    upload_set_form_field $upload_field_name.path "$upload_tmp_path";
    upload_aggregate_form_field "$upload_field_name.md5" "$upload_file_md5";
    upload_aggregate_form_field "$upload_field_name.size" "$upload_file_size";
    upload_pass_form_field "^.*$";
    upload_cleanup 400 404 499 500-505;
}
# 重新加载配置
/usr/local/nginx/sbin/nginx -t 
/usr/local/nginx/sbin/nginx -s reload
```
- ** 注意 **
    - 继续上面配置: 如果 upload_pass 想指定到另一台服务器
    ```
    upload_pass @test  # 修改
    
    location @test {
        proxy_pass http://a.b.c; ## 最终处理URL地址是http://a.b.c/upimg
    }
    ```

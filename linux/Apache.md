# Apache

### 下载指定版本
- http://www.oldapps.com/linux/apache.php?old_apache=13474#download-section

### 常见命令
- /bin/apachectl start

### 证书生成,安装
前提假设:
    1.假设apache 安装目录为$APACHE_ROOT =  /usr/local/apache
依赖工具: 
    openssl  expect
脚本内容:
    _ca_new.sh: 该shell脚本包含生成ca证书的基本命令,生成文件有ca.key，ca.crt
_server_new.sh: 该shell脚本包含生成server证书的基本命令,依赖与ca证书,生成文件有server.key，server.csr ， server. crt
_client_new.sh: 该shell脚本包含生成client证书的基本命令,依赖与ca证书,生成文件有client.key，client.csr ， client. crt, client.p12
create_server.sh:(只执行一次)
    自动执行 _ca_new.sh 与 _server_new.sh 脚本并且自动应答脚本提出的问题，执行完成后需要重启apache 服务
create_client.sh: 
    自动执行_client_new.sh 脚本 并且 自动应答脚本提出的问题,每执行一次需要修改此shell内容中的” Common Name”和 ” Email Address”内容, 证书导入默认密码” Enter Export Password” 内容
apache配置
    1.  文件生成
        假设在$APACHE_ROOT /conf 目录下 mkdir  ssl.crt 目录,将5个脚本文件移入 ssl.crt 目录下 并执行一次 ./create_server.sh 脚本
    2. 在http.conf 文件中配置
        SSLCertificateFile  $APACHE_ROOT/conf/ssl.crt/server.crt
        SSLCertificateKeyFile $APACHE_ROOT/conf/ssl.crt/server.key
        SSLCACertificateFile $APACHE_ROOT/conf/ssl.crt/ca.crt
    3. 重启apache服务器
        $APACHE_ROOT/bin/apachectl restart
        客户端证书生成:
        默认证书文件名为client.p12，执行create_client.sh脚本则重新生成一个
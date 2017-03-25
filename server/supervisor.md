# supervisor

### 命令
- 启动 supervisord -c /etc/supervisord.conf
- 关闭 supervisorctl shutdown
- 停止进程 supervisorctl [`start|stop|restart`] [`programName|groupName`]
- 停止全部 supervisorctl stop all  `注：start、restart、stop都不会载入最新的配置文件。`
- 查看状态 supervisorctl status
- 重载配置 supervisorctl reload `载入最新的配置文件，停止原有进程并按新的配置启动、管理所有进程。`
- 新增进程 supervisorctl update `根据最新的配置文件，启动新配置或有改动的进程，配置没有改动的进程不会受影响而重启`
- **`注意：显示用stop停止掉的进程，用reload或者update都不会自动重启。`**

### 配置
>   ;[program:应用名称]
>   [program:programName]
>   
>   ;命令路径,如:使用python启动的程序应该为 python /home/test.py
>   command=/bin/cat
>   
>   ;当numprocs为1时,process_name=%(program_name)s
>   ;当numprocs>=2时,%(program_name)s_%(process_num)02d
>   process_name=%(program_name)s
>   
>   ;进程数量
>   numprocs=1
>   
>   ;执行目录,若有/home/supervisor_test/test1.py
>   ;将directory设置成/home/supervisor_test
>   ;则command只需设置成python test1.py
>   ;否则command必须设置成绝对执行目录
>   directory=/tmp
>   
>   ;掩码:--- -w- -w-, 转换后rwx r-x w-x
>   umask=022
>   
>   ;优先级,值越高,最后启动,最先被关闭,默认值999
>   priority=999
>   
>   ;如果是true,当supervisor启动时,程序将会自动启动
>   autostart=true
>   
>   ;自动重启
>   autorestart=true
>   
>   ;启动延时执行,默认1秒
>   startsecs=10
>   
>   ;启动尝试次数,默认3次
>   startretries=3
>   
>   ;当退出码是0,2时,执行重启,默认值0,2
>   exitcodes=0,2
>   
>   ;停止信号,默认TERM
>   ;中断:INT(类似于Ctrl+C)(kill -INT pid),退出后会将写文件或日志(推荐)
>   ;终止:TERM(kill -TERM pid)
>   ;挂起:HUP(kill -HUP pid),注意与Ctrl+Z/kill -stop pid不同
>   ;从容停止:QUIT(kill -QUIT pid)
>   ;KILL, USR1, USR2其他见命令(kill -l),说明1
>   stopsignal=TERM
>   
>   stopwaitsecs=10
>   
>   ;以root用户执行
>   user=root
>   
>   ;重定向
>   redirect_stderr=false
>   
>   stdout_logfile=/a/path
>   stdout_logfile_maxbytes=1MB
>   stdout_logfile_backups=10
>   stdout_capture_maxbytes=1MB
>   stderr_logfile=/a/path
>   stderr_logfile_maxbytes=1MB
>   stderr_logfile_backups=10
>   stderr_capture_maxbytes=1MB
>   
>   ;环境变量设置
>   environment=A="1",B="2"
>   
>   serverurl=AUTO
>   
>   ;下面是进程组的可选配置，可以创建一个或多个进程组。
>   ;[group:groupName]
>   ;programs=programName1,programName2  ; 这里的进程名是上文 [program:programName] 定义的programName
>   ;priority=999                        ; the relative start priority (default 999)
>   
>   ;使用浏览器查看和控制进程状态
>   ;inet(TCP)server disabled by default
>   [inet_http_server]
>   
>   ;(ip_address:port specifier, *:port for all iface)
>   port=0.0.0.0:9001 
>   
>   ;用户名(default is no username (open server))
>   username=user
>   
>   ;密码(default is no password (open server))
>   password=123

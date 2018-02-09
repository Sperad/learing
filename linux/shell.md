# Cmd
- 查看某目录的子目录文件大小: du -h --max-depth=1 {path}
- 查看某目录的文件数量: ls -l |grep "^-"|wc -l

- 批量删除进程: ps -ef | grep ??? | grep -v grep |  awk '{print $2}' | xargs kill -9
- 查看系统所有用户
    - /etc/passwd字段含义: [用户名:口令:用户标识号:组标识号:注释性描述:主目录:登录Shell]
    - cat /etc/passwd|grep -v nologin|grep -v halt|grep -v shutdown|awk -F":" '{ print $1"|"$3"|"$4 }'|more
- 统计某目录下文件数量 
    - ll /var/www/html | grep '^-' | wc -l
- 查看文件前200个字节
    - head -c 200 /path/filename

### 网络排查
- route
    - route add default netmask 0.0.0.0 gw 0.0.0.0 dev eth0

### 注意
- 服务器磁盘满，导致无法写入数据，站点无法正常启动，写入log日志

### cpu占用100%排查
> top // 查看进程占用cpu情况
top  -Hp 10765 //查看线程占用cpu情况
printf “%x” 10804 //占用cup 最高的线程 --输出16进制值
// 10804对应的16进制是0x2a34
jstack 10765 | grep ‘0x2a34’ -C9 --color

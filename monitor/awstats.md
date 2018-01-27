# Awstats

### 介绍
- 基于Perl
- 静态站点日志分析
- 轻量级,对于每天1G+的日志文件分析太慢。

### 日志切割&&分析
>   #!/bin/sh
>   # 日志切割
>   LogDir="/usr/local/nginx/logs"
>   year=`date +%Y`
>   month=`date +%m`
>   day=`date +%d`
>   pid_path="/usr/local/nginx/logs/nginx.pid"
>   
>   cd $LogDir
>   
>   if [ ! -d "$year" ] ;then
>      mkdir "$year"
>   fi
>   
>   if [ ! -d "$year/$month" ] ;then
>     mkdir "$year/$month"
>   fi
>   
>   mv "$LogDir/access.log" "$LogDir/$year/$month/$day.access.log"
>   mv "$LogDir/error.log"  "$LogDir/$year/$month/$day.error.log"
>   kill -USR1 `cat ${pid_path}`
>   
>   #awstats 日志分析
>   _Site="www.test.com"
>   _web_dir="/var/www/html/awstats/awstats/"
>   _Dir="/usr/local/awstats"
>   
>   cleanDir="/var/lib/awstats"
>   rm -f $cleanDir"/*"
>   
>   #/usr/local/awstats/wwwroot/cgi-bin/awstats.pl -update -config=$_Site
>   $_Dir/tools/awstats_updateall.pl now
>   $_Dir/tools/awstats_buildstaticpages.pl -config=$_Site -lang=cn -awstatsprog=$_Dir/wwwroot/cgi-bin/awstats.pl -dir=$_web_dir

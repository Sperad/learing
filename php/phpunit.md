# 单元测试

### 安装
- windows
    - 安装PHP,并加入系统环境变量
    - [官网下载phar文件](http://www.phpunit.cn)
    - 在.phar文件同目录下新建**phpunit.cmd**文件,内容: **@php "%~dp0phpunit.phar" %* **
    - 将.phar文件目录添加到系统Path环境变量
- Linux
    - wget https://phar.phpunit.de/phpunit.phar
    - chmod +x phpunit.phar
    - sudo mv phpunit.phar /usr/local/bin/phpunit
    - phpunit --version

### 常用

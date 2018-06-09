# 性能

### 工具
- [xhprof](http://pecl.php.net/package/xhprof) 性能分析工具
- [xdebug](http://pecl.php.net/package/xdebug)
- [Webgrind](https://github.com/jokkedk/webgrind) 基于xdebug的web前端性能分析查看站点工具

### 并发
- ab 压力测试

### xhprof 
- 相关画图 Graphviz
- yum install graphviz
- yum install graphviz-gd

#### 简短总结

- pear：一个书写的比较规范，国外较流行的工具箱代码集
- pecl：php扩展包，但不属于php基本扩展范围
- perl：一种早于php出现的脚本级语言，php借鉴了他的正则表达式部分

#### Pear、Pecl都是PHP扩展模块的集合。是扩展PHP的两种方法。

- A.一种是用纯粹的PHP代码写函数和类。

    Pear就是这样一个项目。PEAR是PHP的官方开源类库(PHP Extension and Application Repository的缩写)
。Pear在英文中是梨子的意思。PEAR将PHP程序开发过程中常用的功能编写成类库，涵盖了页面呈面、数据库访问、文件操作、数据结构、缓存操作、网络协议等许多方面，用户可以很方便地使用。它是一个PHP扩展及应用的一个代码仓库，简单地说，PEAR就是PHP的cpan。其主页是pear.php.net。

- B.另外一种是用c或者c++编写外部模块加载至php中。

    Pecl(The PHP Extension Community Library)
就是干这个事的，PHP的标准扩展，可以补充实际开发中所需的功能。所有的扩展都需要安装，在Windows下面以DLL的形式出现；在linux下面需要单独进行编译，它的表现形式为根据PHP官方的标准用C语言写成，尽管源码开放但是一般人无法随意更改源码。其主页是pecl.php.net。最直接的表述：Pear是PHP的上层扩展，Pecl是PHP的底层扩展。这两种方法其实都是为特定的应用提供现成的函数或者类，本质上来说都是一样的。

#### PEAR, PECL和Perl的区别

- PEAR是PHP扩展与应用库（the PHP Extension and Application 
Repository）的缩写。它是一个PHP扩展及应用的一个代码仓库，简单地说，PEAR就是PHP的CPAN。
PECL （PHP Extension Community Library），PHP的扩展库，它提供了一系列已知的扩展库，由C++等其他语言编写而成，多数以Dl
l（动态链接库）的形式体现，为比PEAR更快，但是与PEAR不同的是，PECL需要在服务器上配置并被注册到主机中。
Perl （Practical Extraction and Report Language）最初的设计者为拉里·沃尔（Larry 
Wall），他于1987年12月18日发表。Perl借取了C、sed、awk、shell scripting以及很多其他程序语言的特性。其中最重要的特性是
它内部集成了正则表达式的功能，以及巨大的第三方代码库CPAN。简而言之，Perl象C一样强大，象awk、sed等脚本描述语言一样方
便。Perl 一般被称为“实用报表提取语言”（Practical Extraction and Report 
Language），你也可能看到“perl”，所有的字母都是小写的。一般，“Perl”，有大写的 P，是指语言本身，而“perl”，小写的 
p，是指程序运行的解释器。
# 规范

### 书籍
- 必看
    - [The Right Way](http://www.phptherightway.com/)
    - [Modern PHP](https://github.com/codeguy/modern-php)
    - [The Right Way of laravel-china](https://laravel-china.github.io/php-the-right-way/#how-to-contribute)
    
- 资源列表
    - [awesome-php](https://github.com/ziadoz/awesome-php)
        收集整理一些常用的PHP类库, 资源以及技巧.
    - [awesome-php-zh_CN](https://github.com/CraryPrimitiveMan/awesome-php-zh_CN)
        一个PHP资源列表，内容包括：库、框架、模板、安全、代码分析、日志、第三方库、配置工具、Web 工具、书籍、电子书、经典博文等等
    - [free-programming-books-zh_CN](https://github.com/letusplay/free-programming-books-zh_CN)
        免费的编程中文书籍索引

### PSR建议
- [官方网站](http://www.php-fig.org/psr/)

### Composer
- [官方网站](https://getcomposer.org/) [中文网站](http://docs.phpcomposer.com/)
- composer.json
    - require : 依赖包名以及版本信息列表, 增加以后执行: `composer install`
    - require-dev: 此些依赖包列表只会在开发过程中使用
    - [autoload](http://docs.phpcomposer.com/04-schema.html#autoload): 增加以后执行: `composer dump-autoload`
        - files : files数组元素是文件的路径，路径是相对于应用的根目录
        - classmap : 可以用 classmap 生成支持支持自定义加载的不遵循 PSR-0/4 规范的类库
        - psr-0 : 键值对数组
        - psr-4 : 键值对数组(命名空间=>相对目录)

- 加速
    - 修改composer的全局配置文件(推荐方式): 
        `composer config -g repo.packagist composer https://packagist.phpcomposer.com`
    - 修改当前项目的 composer.json 配置文件:
    >       "repositories": {
    >          "packagist": {
    >              "type": "composer",
    >              "url": "https://packagist.phpcomposer.com"
    >          }
    >       }



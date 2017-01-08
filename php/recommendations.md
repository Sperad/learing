# 开发规范

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
        - psr-4 : 键值对数组
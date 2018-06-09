# 框架

## ThinkPHP

## Laravel

今天开始正式学习laravel,在之前一直在各个框架之间徘徊，最后觉得laravel框架要比其他更好，边学习边把自己遇见的一些小小的坑填上。我用的laravel版本是5.2的，在根目录`以下用 '/' 表示` composer.json中可以查看

## 用户(User)模块
参考教材学习: [http://laravelacademy.org/post/1258.html][user]

- 数据库创建表
    
    只是需要到 / 目录下执行： ``php artisan migrate       // (migrate:迁移)``
    退出功能失效原因: AuthController 中构造函数原因:

```php
<?php
  public function __construct()
  {
    $this->middleware($this->guestMiddleware(), ['except' => 'logout']);
  }
```
所以需要在路由控制地方 去掉 `get` 字符,结果为：

```php
<?php
    Route::get('auth/logout', 'Auth\AuthController@getLogout'); //原
    Route::get('auth/logout', 'Auth\AuthController@logout');    //现
```

- 创建restful 风格的Api 

    本来想自己写的，但是发现有很好的模块，干嘛不用呢， `dingo\api`,composer安装过程中，慢的卡屌，
    所以查看官网加速方式,再次安装真爽，妙射啊。安装好以后，按照教程配置走，我也是照着撸代码的。

```php
<?php
    'providers' => [
        Dingo\Api\Provider\LaravelServiceProvider::class;
    ]
```
但是，当我运行`php artisan vendor:publish --provider="Dingo\Api\Provider\LaravelServiceProvider"`这一命令行的时候，报错咯
![]({{site.data.post.imghost}}/RHY%25%251U7RVJOGR%7BWA%5DVFH8H.png)
还是google好，让我找到答案咯: [地址][log], 原因很简单，我在 `Dingo\Api\Provider\LaravelServiceProvider::class;` 多加了一个`;` 造成语法错误。哭死的心都有咯。

[user]: http://laravelacademy.org/post/1258.html
[teach]: https://github.com/dingo/api/wiki/Configuration
[log]:https://laracasts.com/discuss/channels/general-discussion/class-log-does-not-exist?page=3


## Yii

## Symfony
- bundles 第三包组建 
- Container 容器
- 依赖注入
- 执行流程
    - web/app.php
    - $kernel = new AppKernel()
    - $response = $kernel->handle($request)
        - $kernel->boot()
        - initializeBundles() ,  initializeContainer(), 
        - $bundle->setContainer($container) , $bundle->boot()
        - $container->get('http_kernel')->handle(...);
    - $response->send()
    - $kernel->terminate($request, $response)
        - $kernel->getHttpKernel()->terminate($request, $response);
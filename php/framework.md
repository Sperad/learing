# 框架

## ThinkPHP

## Laravel

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
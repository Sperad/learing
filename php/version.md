# 版本区别

### php7.0
- 新特性
    - 1.标量类型声明 
    - 2.返回值类型声明
    - 3.null合并运算符(??)
    - 4.太空船操作符('<=>' 组合比较符)
    - 5.通过 define() 定义常量数组
    - 6.匿名类
    - 7.Unicode codepoint 转译语法
    - 8.Closure::call()
    - 9.为 unserialize() 提供过滤
    - 10.IntlChar类
    - 11.预期
    - 12.Group use declarations
    - 13.intdiv
    - 14.CSPRNG
    - 15.preg_replace_callback_array
    - 16.Session options
    - 17.生成器的返回值
    - 18.生成器中引入其他生成器
- 不兼容性
    - 1.foreach 不再改变内部数组指针
    - 2.foreach 通过引用遍历时，有更好的迭代特性
    - 3.十六进制字符串不再被认为是数字
    - 4.new 操作符创建的对象不能以引用方式赋值给变量
    - 5.移除了 ASP 和 script PHP 标签
    - 6.在数值溢出的时候，内部函数将会失败
    - 7.JSON 扩展已经被 JSOND 取代
    - 8.INI 文件中 # 注释格式被移除
    - 9. $HTTP_RAW_POST_DATA 被移除
    - 10. yield 变更为右联接运算符


### php5.6
- 1.可以使用表达式定义常量
- 2.使用 ... 运算符定义变长参数函数
- 3.使用 ** 进行幂运算
- 4.use function 以及 use const
- 5.加入 hash_equals() 函数，以恒定的时间消耗来进行字符串比较，以避免时序攻击
- 6.加入 __debugInfo()

### PHP 5.5
- 1.新增 Generators
- 2.新增 finally 关键字
- 3.foreach 支持 list()
- 4.empty() 支持传入一个任意表达式，而不仅是一个变量
- 5.直接通过下标获取访问数组和字符串字面量的元素或字符
- 6.新的密码哈希 API
- 7.新增 boolval() 函数
- 8.新增 array_column() 函数

### PHP 5.4
- 1.新增 Traits
- 2.新增短数组语法
- 3.新增支持对函数返回数组的成员访问解析( print func()[0])
- 4.无论 php.ini 中是否设置 short_open_tag， 格式总是可用。
- 5.内置用于开发的 CLI 模式的 web server
- 6.新增在实例化时访问类成员(new Foo)->bar()
- 7.新增了动态访问静态方法的方式  $func= "funcXXX"; A::{$func}();
- 8.闭包支持 $this
- 9.新增二进制直接量
- 10.session提供了上传进度支持
- 11.默认使用 mysqlnd
- 12.让 json 更懂中文
- 13.default_charset从ISO-8859-1已经变为UTF-8

### PHP 5.3
- 1.支持命名空间
- 2.增加后期静态绑定
- 3.增加 goto 操作符
- 4.添加了原生的闭包(Lambda/匿名函数)支持
- 5.新增两个魔术方法, __callStatic 和 __invoke
- 6.添加 Nowdoc 语法支持
- 7.Heredoc 结构中可以用双引号来声明标识符了。
- 8.const 关键字可用来在类定义之外定义常量了
- 9.三元运算符可以简写省略中间的部分
- 10.异常可以嵌套了
- 11.可以动态访问静态变量了
- 12.mail()函数支持记录发送日志了

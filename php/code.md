# 代码段

## 注意
- **list()只认识数组中key为数字的索引**

### 数组合并
- 使用 array_merge, 如果key为数字，则重新建立索引。如果key重复，后面覆盖前面。
- 使用 +  即使key为数字，也不会重新建立索引。如果key重复，前面覆盖后面。
- 将自身二维数组合并成一维数组
```
$data = [[1, 2], [3], [4, 5]];
print_r(array_merge(... $data)); // [1, 2, 3, 4, 5];
```

### 二维数组排序
- 指定$k
    ``` array_multisort(array_column($rows, 'id'), SORT_ASC, $rows);```

file_get_contents() 不支持https
https://curl.haxx.se/ca/cacert.pem

常见代码段:https://blog.dmic.studio/posts/php-array-function/

-- 获取关联数组最后的键名和键值
~~~
$lastVal = end($all);
$lastKey = key($all);
~~~

### JSON
使json字符串变为php能识别的字符串(对 key,val 增加双引号)
function JSON_DECODE($json, $assoc = TRUE)
{
    $json = str_replace(["\n","\r"],"\\n", $json);
    $json = preg_replace('/([{,]+)(\s*)([^"]+?)\s*:/','$1"$3":', $json);
    $json = preg_replace('/(,)\s*}$/','}', $json);
    return json_decode($json, $assoc);
}

//获取毫秒数据
function millisecond()
{
    list($t1, $t2) = explode(' ', microtime());
    return round((floatval($t1) + floatval($t2)) * 1000,0) - 86400000;
}
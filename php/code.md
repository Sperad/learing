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
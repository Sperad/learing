# PhpStorm
### 下载&安装
版本: 10.0.3
免费证书:License sever :http://idea.qinxi1992.cn/
来源:http://blog.csdn.net/eminemliyuan/article/details/51137054
自我搭建IntelliJ IDEA授权服务器: http://blog.lanyus.com/archives/174.html

2016.3 
http://idea.imsxm.com/
主题加载路径: C:\Users\Administrator\.WebIde100\config\colors

### 配置偏爱
- svn: svn安装的时候要安装命令行组件

### 常用功能
- 设置: ctrl + alt + s


# Sublime
## 安装
- [sublime下载](http://www.sublimetext.com/3)
- [package安装](https://packagecontrol.io/installation)

## 常见配置
- 多行选择快捷键冲突
    *桌面上右键单击 ->选择"图形选项" -> "快捷键" -> 选择"禁用"。但是这样禁用之后ctrl+alt+方向键的快捷键就失效了。
    *最后我的解决方法是在Preferences→Key Binding-User中重新定义了快捷键如下：
    ```
        { "keys": ["ctrl+shift+f9"], "command": "select_lines", "args": {"forward": false} },
        { "keys": ["ctrl+shift+f10"], "command": "select_lines", "args": {"forward": true} },
    ```
- Ctrl+B来编译.php文件
    * 配置php全局环境变量
    * Tools->Build System-> New Build System (默认的内容是{ "shell_cmd": "make"})
    * 修改为：{ "cmd": ["php", "$file"], "file_regex": "php$", "selector": "source.php" }
    * 保存在默认的目录下即可, 注意修改文件名为php.sublime-build, 重启sublime。

- 设置空格可视化
    * Preferences->Settings - Default 中的   "draw_white_space": "selection",
    * Preferences->Settings - User 中保存为: "draw_white_space": "all"

- 设置tab转换为4个空格
    * Preferences->Settings - Default 中的    " translate_tabs_to_spaces": "false",
    * Preferences->Settings - User 中保存 为: " translate_tabs_to_spaces": "true"

## 我的插件
- Alignment `快捷对齐`
- Emmet `前端必备`
- docblockr `注解提示`
- EncodingHelper `文件编码转换`
- markdown Prieview `markdown 预览`
- sublimeGit `Git版本控制`
- TortoiseSVN `SVN版本控制`
- AllAutocomplete `全文搜索匹配已打开文件中的关键词`
- phpfmt `PHP代码格式化`
- SublimeCodeIntel `代码函数跳转`

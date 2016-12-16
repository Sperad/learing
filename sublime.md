# sublime

## 安装
- [sublime下载](http://www.sublimetext.com/3)
- [package安装](https://packagecontrol.io/installation)

## 常见配置

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
- Alignment
- Emmet
- docblockr
- EncodingHelper
- markdown Prieview
- sublimeGit
- TortoiseSVN
- AllAutocomplete
- phpfmt
- SublimeCodeIntel

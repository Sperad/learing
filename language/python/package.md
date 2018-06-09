# 包管理

### 安装
一、方法1： 单文件模块
    直接把文件拷贝到 $python_dir/Lib

二、方法2： 多文件模块，带setup.py
    下载模块包，进行解压，进入模块文件夹，执行：
    python setup.py install

三、 方法3：easy_install 方式
    wget -q http://peak.telecommunity.com/dist/ez_setup.py
    先下载ez_setup.py,运行python ez_setup 进行easy_install工具的安装，之后就可以使用easy_install进行安装package了。
    easy_install  packageName
    easy_install  package.egg

四、 方法4：pip 方式 
    先进行pip工具的安裝：easy_install pip（pip 可以通过easy_install 安裝，而且也会装到 Scripts 文件夹下。）
    安裝：pip install PackageName
    更新：pip install -U PackageName
    移除：pip uninstall PackageName
    搜索：pip search PackageName
    帮助：pip help
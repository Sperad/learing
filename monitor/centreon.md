安装：
    wget http://yum.centreon.com/standard/3.0/stable/ces-standard.repo -O /etc/yum.repos.d/ces-standard.repo
    wget http://yum.centreon.com/standard/3.0/stable/RPM-GPG-KEY-CES  -O /etc/pki/rpm-gpg/RPM-GPG-KEY-CES
中心节点：
    yum install centreon-base-config-centreon-engine centreon -y
poller节点：
    yum install centreon-poller-centreon-engine
key文件的安装：
    $ su - centreon
    $ ssh-keygen -t rsa
    Copy this key on the collector:
    $ ssh-copy-id centreon@your_poller_ip
帮助文档：
    https://documentation.centreon.com/docs/centreon/en/2.7.x/installation/downloads.html 

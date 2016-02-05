vagrant-Zabbix
==============

This VagrantFile provides a Zabbix 2.4 server installed on CentOS 6.7.   After vagrant up, connect to the VM on 192.168.33.10:80 in a web browser and complete the setup.

MySQL root password: topsecret

1.另外我使用aliyun的更新源，在国内会更新快一点。

2.我使用微软雅黑字体，替换了zabbix网站下的默认字体，这样显示中文的时候会好一些。

3.为了修正zabbix界面历史栏乱码问题，我把mysql的默认数据库编码设置成了utf8(同过替换my.cnf)

Zabbix的默认登录账号为admin,密码为zabbix


Install is based on the steps found here: http://bicofino.io/blog/2015/10/09/install-zabbix-2-dot-4-6-from-source-on-centos/

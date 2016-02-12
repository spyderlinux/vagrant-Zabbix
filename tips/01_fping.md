Simple Check fping
==================

**使用zabbix 最容易遇到的一个问题是，当你刚开始在实验环境想不使用agent来实现一些监控效果时，你尝试配置ping来监控一台主机，但是总是得不到数据。**

原因如下：

* fping 默认没有安装，你需要默认安装fping ,然后确认fping 是否在/usr/sbin/fping
<pre>
  [vagrant@zabbix ~]$ whereis fping
  fping: /usr/sbin/fping /usr/share/man/man8/fping.8.gz
  [vagrant@zabbix ~]$
</pre>

* 如果fping 已经安装，但是不是安装在/usr/sbin/fping ，你可以创建一个软链接。
* 如果fping 已经安装，但是你遇到permission error ,can not create socket 之类的错误。使用下面命令来修改fping的运行权限。
<pre>
  sudo chown root:root /usr/sbin/fping
  sudo chmod u+s /usr/sbin/fping
</pre>

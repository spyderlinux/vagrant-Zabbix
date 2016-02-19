#!/bin/bash

# -------------------------------------------------
# Add zabbix user for grafana
# -------------------------------------------------

python /vagrant/zabbix_script/create-grafana-user.py

# -------------------------------------------
# download and install grafana and grafana-zabbix plugin
# ------------------------------------------

echo "start to install grafana"

if [ ! -s /vagrant/grafana-2.5.0-1.x86_64.rpm ]
  then
    cd /vagrant
    wget https://grafanarel.s3.amazonaws.com/builds/grafana-2.5.0-1.x86_64.rpm
fi

sudo rpm -ivh /vagrant/grafana-2.5.0-1.x86_64.rpm
cd /usr/share/grafana/public/app/plugins/datasource
sudo tar -zxvf /vagrant/grafana-zabbix-v2.5.1.tar.gz
sudo mv grafana-zabbix-2.5.1/zabbix ../
sudo rm grafana-zabbix-2.5.1 -rf

# -----------------------------------------
# config grafana-server service
# ----------------------------------------
sudo /sbin/chkconfig --add grafana-server
sudo service grafana-server start

sudo service grafana-server stop

# inject grafana datasource (zabbix datasource)
echo ".read /vagrant/config/grafana-zabbix-datasource.sql"|sudo sqlite3 /var/lib/grafana/grafana.db
sudo service grafana-server start

#!/bin/bash
yum install -y wget
echo "下载微软雅黑字体"
wget -O /usr/share/fonts/dejavu/msyh.ttf https://blogcdn.dadiopi.top/msyh.ttf 
echo "备份原软链接"
mv /etc/alternatives/zabbix-web-font /etc/alternatives/zabbix-web-font-bak
echo "新建软链接"
ln -s /usr/share/fonts/dejavu/msyh.ttf /etc/alternatives/zabbix-web-font
systemctl restart zabbix-server

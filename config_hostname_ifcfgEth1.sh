#!/bin/bash
chmod +x /root/bin/config_hostname_ifcfgEth1.sh
ping -c 2 www.baidu.com
hostnamectl set-hostname $1
cp /etc/sysconfig/network-scripts/ifcfg-eth0 /etc/sysconfig/network-scripts/ifcfg-eth1
sed -i '2s/0/1/1' /etc/sysconfig/network-scripts/ifcfg-eth1
halt -p

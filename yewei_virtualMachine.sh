#!/bin/bash
scp /root/config_hostname_ifcfgEth1.sh 192.168.$1.$2:/root/bin/
ssh 192.168.$1.$2


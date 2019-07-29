#!/bin/bash
yum install -y ntp
clear
echo "server 192.168.46.60 prefer" >> /etc/ntp.conf 
echo "server 192.168.46.61 iburst" >> /etc/ntp.conf
sed -i '/server 0.centos.pool.ntp.org iburst/s/^/#/' /etc/ntp.conf
sed -i '/server 1.centos.pool.ntp.org iburst/s/^/#/' /etc/ntp.conf
sed -i '/server 2.centos.pool.ntp.org iburst/s/^/#/' /etc/ntp.conf
sed -i '/server 3.centos.pool.ntp.org iburst/s/^/#/' /etc/ntp.conf
firewall-cmd --add-service=ntp --permanent 
firewall-cmd --add-port=123/udp --permanent 
firewall-cmd --reload 
systemctl enable ntpd
systemctl start ntpd
timedatectl
ntpq -np
clear
sleep 5
systemctl restart ntpd
timedatectl
ntpq -np

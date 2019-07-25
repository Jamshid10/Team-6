#!/bin/bash
yum install -y ntp
clear
echo "server 192.168.46.60 prefer" >> /etc/ntp.conf
echo "server 192.168.46.61 iburst" >> /etc/ntp.conf
firewall-cmd --add-service=ntp --permanent
firewall-cmd --add-port=123/udp --permanent
firewall-cmd --reload
stemctl enable ntpd
systemctl start ntpd
timedatectl
ntpq -np

#!/bin/bash
for hostname in `cat /home/list_of_ip`;
do
sshpass -p "password"  ssh-copy-id  root@$hostname
echo “ansible ALL=(ALL) NOPASSWD: ALL” >> /etc/sudoers
ssh root@$ip useradd ansible -p `openssl passwd password`
sshpass -p "password" ssh-copy-id ansible@$ip

done


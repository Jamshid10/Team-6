#!/bin/bash
for ip in `cat /home/list_of_ip`;
do
ssh root@$ip useradd ansible -p `openssl passwd password` 
done


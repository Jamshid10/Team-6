#!/bin/bash
for hn in `cat /ansible/scripts/list_of_practice`;
do
sshpass -p "passwora" ssh-copy-id  ansible@$hn 
done


#!/bin/bash
clear
echo adding user ansible
echo 1..
sleep 2
clear
echo adding user ansible
echo .2.
sleep 2
clear
echo adding user ansible
echo ..3
sleep 4
clear
useradd ansible -p $(openssl passwd passwora) -s /bin/bash
echo ______________________________
cat /etc/passwd | grep ansible
echo ______________________________
echo ansible ALL='(ALL)' NOPASSWD: ALL >> /etc/sudoers
sleep 4
clear
echo adding user zafar
echo 1..
sleep 2
clear
echo adding user zafar
echo .2.
sleep 2
clear
echo adding user zafar
echo ..3
sleep 4
clear
useradd zafar -p $(openssl passwd passworz) -s /bin/bash
echo ______________________________
cat /etc/passwd | grep zafar
echo ______________________________
sleep 4
clear
echo adding zafar and ansible user to sudoers
echo 1..
sleep 2
clear
echo adding zafar and ansible user to sudoers
echo .2.
sleep 2
clear
echo adding zafar and ansible user to sudoers
echo ..3
sleep 2
clear
echo zafar ALL='(ALL)' NOPASSWD: ALL >> /etc/sudoers
echo ______________________________
cat /etc/sudoers | grep zafar
echo ______________________________
cat /etc/sudoers | grep ansible
echo ______________________________
sleep 4
clear
echo disabiling RootLogin
echo 1..
sleep 2
clear
echo disabiling RootLogin
echo .2.
sleep 2
clear
echo disabiling RootLogin
echo ..3
sleep 2
clear
echo 'PermitRootLogin no' >> /etc/ssh/sshd_config
sleep 2
echo ______________________________
cat /etc/ssh/sshd_config | grep PermitRootLogin\ no
echo ______________________________
sleep 8
systemctl restart sshd
clear
echo Analyzing................
sleep 7
clear
clear
echo 1..
sleep 2
clear
echo .2.
sleep 2
clear
echo ..3
sleep 2
clear
echo user zafar added
echo ______________________________
cat /etc/passwd | grep zafar
echo ______________________________
sleep 6
clear
echo 1..
sleep 2
clear
echo .2.
sleep 2
clear
echo ..3
sleep 2
clear
echo user ansible added
echo ______________________________
cat /etc/passwd | grep ansible
echo ______________________________
sleep 4
clear
echo 1..
sleep 2
clear
echo .2.
sleep 2
clear
echo ..3
sleep 2
clear
sleep 2
echo user zafar and ansible added to the sudoers
echo ______________________________
tail -2 /etc/sudoers
echo ______________________________
sleep 6
clear
echo user zafar added
echo in /etc/passwd
echo ______________________________
cat /etc/passwd | grep zafar
echo ______________________________
echo user ansible added
echo in /etc/passwd
echo ______________________________
cat /etc/passwd | grep ansible
echo ______________________________
echo user zafar and ansible added to the sudoers
echo in /etc/sudoers
echo ______________________________
tail -2 /etc/sudoers
echo ______________________________
sleep 10
echo ______________________________
echo Mission Complete !!!
echo ______________________________

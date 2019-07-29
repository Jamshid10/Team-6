#!/bin/bash
useradd ansible -p $(openssl passwd passwora) -s /bin/bash
echo ansible ALL='(ALL)' NOPASSWD: ALL >> /etc/sudoers


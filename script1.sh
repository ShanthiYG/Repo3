#!/bin/bash
read -p "Please enter the User name:" USER
useradd -m $USER
cat /etc/passwd | grep -i $USER | cut -d ":" -f 1



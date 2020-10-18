#!/bin/bash
#set -xe
read -p "Please Enter the valid User Name:" USER_NAME
echo $USER_NAME
if [  -z "$USER_NAME"  ]; then
        echo "Its not a valid User Name"
else
        echo " The Username is $USER_NAME"
        EX_USER=$(cat /etc/passwd | cut -d ":" -f 1 | grep -w $USER_NAME)
        if [ "$USER_NAME" = "$EX_USER" ]; then
                echo "User $USER_NAME exists, please a select a different Username.."
        else
                echo "Lets create User $USER_NAME"
                SPEC=$(echo '!@#$%^&*()_' | fold -w1 | shuf | head -1)
                PASSWORD="India@${RANDOM}${SPEC}
                useradd -m $USER_NAME
                echo $PASSWORD
                echo "$USER_NAME:$PASSWORD" | sudo chpasswd
                passwd -e "${USER_NAME}"
#echo "  Succeessfully Created user $USER_NAME  with password as $PASSWORD  "
        fi
fi


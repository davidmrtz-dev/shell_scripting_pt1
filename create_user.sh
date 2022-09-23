#!/bin/bash

read -p "Enter a username: " NEWUSER
grep $NEWUSER /etc/passwd && exit 2
PASSWORD=$(./pwd_gen.sh)
sudo useradd -m $NEWUSER -p $PASSWORD
echo ""
getent passwd $NEWUSER

#!/bin/bash

PWD_OK=false
until [ "$PWD_OK" = true ] ; do
	read -sp "Enter a password: "
	echo ""
	PWD_LEN=$(echo -n "$REPLY" | wc -m)
	PASSWORD=$(openssl passwd -6 "$REPLY")
	if [ "$PWD_LEN" -gt 6 ] ; then
		PWD_OK=true
		echo $PASSWORD
	fi
done

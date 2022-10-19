#!/bin/bash
###################
#to creat a user from arg
##########################


myuser=$1

if [ ! $myuser ]; then
	echo "please provide a user name"
	exit
fi

runuser=`/usr/bin/whoami`
 if [ "$runuser" != 'root' ]; then
	 echo "you must be an root user to add user"
	 exit
fi

/usr/bin/id $myuser

if [ $? -eq 0 ]; then
	echo "the user you want to create is alread present"
	exit
fi

/sbin/useradd $myuser


echo "congo the user has added successfully"


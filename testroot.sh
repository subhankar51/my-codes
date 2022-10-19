#!/bin/bash
#################

### to test weather its a root user or not




USER=`/usr/bin/whoami`


#string test

if [ "$USER" == "root" ]; then

	echo "you are a root user"


else

	echo "you are not a root user"

fi







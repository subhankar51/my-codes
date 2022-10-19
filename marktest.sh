#!/bin/bash
################
#  student mark test
########################





PERC=$1

# to check there is an input or not

if [ ! $PERC ]; then

  echo "pls put a value...."
  exit
fi

# to check perc is with in valid range

if [ "$PERC" -gt 100 -o "$PERC" -lt 0 ]; then

	echo "pls enter a valid number between 0 to 100"
        exit
fi

if [ "$PERC" -gt 75 -a "$PERC" -lt 100 ]; then
	echo "student is : first div"

elif [ "$PERC" -gt 65 -a "$PERC" -lt 75 ]; then
	echo "student is : sec div"

elif [ "$PERC" -gt 45 ]; then
	echo "your are : third div"

elif [ "$PERC" -lt 45 ]; then

	echo "you are : failed"
fi

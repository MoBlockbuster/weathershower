#!/usr/bin/env bash
#######################################
# Author on GitHub: MoBlockbuster
#######################################
# Script to show you the weather of your city

if [ "$1" == "-g" ]
then
	read -p "For which city do you want an overview as bash greeting?: " CITY
	RP=$(realpath $0)
	echo "$RP $CITY" >> ~/.bashrc
	exit 0
elif [ -z "$1" ]
then
	read -p "For which citiy do you want an overview?: " CITY
fi

curl -4 http://wttr.in/"${CITY}"

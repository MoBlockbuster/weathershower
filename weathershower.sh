#!/usr/bin/env bash
#######################################
# Author on GitHub: MoBlockbuster     #
#######################################
# Script to show you the weather of your city

VERSION="2020100601"

# Show version of tool
if [ "$1" == "-v" ]
then
	echo -e "\e[1;33mVersion: \e[1;31m$VERSION\e[0m"
	exit 0
fi

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

curl -4 https://wttr.in/"${CITY}"

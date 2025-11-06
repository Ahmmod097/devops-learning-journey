#!/bin/bash

if [ -f "/etc/passwd" ]; then
	echo "Password file exists"
fi

if [ $(whoami) = "root" ]; then
	echo "You are running as root"
else 
	echo "You are not root"
fi

score=85

if [ $score -ge 80 ]; then
	echo "A+"
elif [ $score -ge 70]; then
	echo "B+"
else 
	echo "Fail"
fi

#!/bin/bash -x

atten=$((RANDOM%2))

if [[ $atten == 0 ]]
then
	echo absent
else
	echo present
fi

#!/bin/bash -x
parttime=0
fulltime=1
perhour=20
time=$(($RANDOM%2))
if [[ $time -eq $fulltime ]]
then 
	hours=8
else
	hours=4
fi
wages=$(($hours * $perhour))
echo Todays salary is: $wages


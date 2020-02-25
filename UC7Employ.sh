#!/bin/bash -x
working(){
daysinmonth=20
parttime=0
fulltime=1
perhour=20
time2=$1
if [[ $time2 -eq $fulltime ]]
then 
	hours=8
else
	hours=4
fi
wages=$(($hours * $perhour))
echo Todays salary is: $wages
}

time=$(($RANDOM%2))
working $time
#!/bin/bash -x

daysinmonth=20
parttime=0
fulltime=1
perhour=20
totalhours=0
read -p "enter maximum hr: " maxhr
read -p "enter maximum day: " maxday
totalhr=0
totalday=0
while [[ $totalhr -le $maxhr && $totalday -le $maxday ]]
do 
    time=$(($RANDOM%2))
    if [[ $time -eq $fulltime ]]
    then 
	    hours=8
    else
	    hours=4
    fi
    totalhours=$(($totalhours + $hours))
    totalhr=$(($totalhr+1))
    totalday=$(($totalday+1))
done
totalsalary=$(($totalhours*$perhour*$totalday))
echo total salary is $totalsalary
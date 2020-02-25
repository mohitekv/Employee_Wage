#!/bin/bash -x

working(){
daysinmonth=20
parttime=0
fulltime=1
perhour=20
time2=$1
read -p "enter maximum hr: " maxhr
read -p "enter maximum day: " maxday
totalhr=0
totalday=0
i=0
while [[ $totalhr -lt $maxhr && $totalday -lt $maxday ]]
do 
    time2=$(($RANDOM%2))
    if [[ $time2 -eq $fulltime ]]
    then 
	    hours=8
    else
	    hours=4
    fi
    totalhours=$(($totalhours + $hours))
    totalhr=$(($totalhr+1))
    totalday=$(($totalday+1))
    wages[$i]=$(($hours * $perhour))
    i=$(($i+1))
done
totalsalary=$(($totalhours*$perhour*$totalday))
echo total salary is $totalsalary
echo wages of $totalday is ${wages[@]}
}

time=$(($RANDOM%2))
working $time
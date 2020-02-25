#!/bin/bash -x
parttime=0
fulltime=1
perhour=20
time=$(($RANDOM%2))
case $time in
$parttime)
    hours=8
    ;;
$fulltime)
    hours=4
    ;;
esac
wages=$(($hours * $perhour))
echo Todays salary is: $wages

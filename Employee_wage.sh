#!/bin/bash 
#assigning Value
declare -A wages
perhour=20
dayhour=8
daysinmonth=20
parttime=0
fulltime=1

working()
{
	time2=$1
	#Asking for how maximum days in one month worker worked 
	read -p "enter maximum day: " maxday
	totalhours=0
	totalday=0
	i=0

	#checking if worker reached its maxhr and maxday limit
	while [[  $totalday -lt $maxday ]]
	do 
		 time2=$(($RANDOM%2))
	   	 if [[ $time2 -eq $fulltime ]]
	       	 then 
	         	hours=8
	         else
	 		hours=4
	    	fi
		
	   	#Calcultaing total hours worker has worked in a day
	    	totalhours=$(($totalhours + $hours))
	    	totalday=$(($totalday+1))
		#keeping an array that stors wages according to day
	    	wages[$i]=$(($hours * $perhour))
	    	i=$(($i+1))
	done
	
	#Calculating total salary of the month
	totalsalary=$(($totalhours*$perhour*$totalday))
	echo total salary is $totalsalary
	echo wages of $totalday days are: ${wages[@]}
}

#checking if employee is absent or present
echo "Employee Details................................"
atten=$((RANDOM%2))
if [[ $atten == 0 ]]
then
	echo Empoyee is absent
else
	echo Employee is present
fi

#calculating total wages
oneday=$(($perhour * $dayhour))
echo "Employee wage of one day: $oneday"


#calculate wages accorging to part time and full time
time=$(($RANDOM%2))
if [[ $time -eq $fulltime ]]
then 
	hours=8
	wages=$(($hours * $perhour))
	echo Todays salary according to full-time: $wages

else
	hours=4
	wages=$(($hours * $perhour))
	echo Todays salary according to part-time : $wages

fi

#function call to calculate monthly wages
time=$(($RANDOM%2))
working $time

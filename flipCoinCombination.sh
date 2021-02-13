#!/bin/bash -x

read -p "Enter how many times to flip the coin: " num

declare -A dict
HEAD=0
TAIL=0
count=0
while [ $count -ne $num ]
do
	flip=$((RANDOM%2))

	if [ 1 -eq $flip ]
	then
		((HEAD++))
		dict[$count]="H"
	else
		((TAIL++))
		dict[$count]="T"
	fi
	count=$(($count+1))
done

echo ${dict[@]}
echo $num

echo "%age of Head: "
echo $(($HEAD*100/$num)).$(( ( ($HEAD*100*100)/$num ) % 100 ))
echo "%age of Tail: "
echo $(($TAIL*100/$num)).$(( ( ($TAIL*100*100)/$num ) % 100 ))

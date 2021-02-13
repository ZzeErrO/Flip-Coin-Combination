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


HEADHEAD=0
HEADTAIL=0
TAILHEAD=0
TAILTAIL=0

declare -A dict1

count=0

while [ $count -ne $num ]
do
   flip1=$((RANDOM%2))
	flip2=$((RANDOM%2))

   if [ 1 -eq $flip1 -a 1 -eq $flip2 ]
   then
      ((HEADHEAD++))
      dict1[$count]="HH"
   elif [ 1 -eq $flip1 -a 0 -eq $flip2 ]
	then
      ((HEADTAIL++))
      dict1[$count]="HT"
	elif [ 0 -eq $flip1 -a 1 -eq $flip2 ]
	then
		((TAILHEAD++))
		dict1[$count]="TH"
	else
		((TAILTAIL++))
		dict1[$count]="TT"
   fi

   count=$(($count+1))

done

echo ${dict1[@]}

echo "%age of HeadHead: "
echo $(($HEADHEAD*100/$num)).$(( ( ($HEADHEAD*100*100)/$num ) % 100 ))
echo "%age of HeadTail: "
echo $(($HEADTAIL*100/$num)).$(( ( ($HEADTAIL*100*100)/$num ) % 100 ))
echo "%age of TailHead: "
echo $(($TAILHEAD*100/$num)).$(( ( ($TAILHEAD*100*100)/$num ) % 100 ))
echo "%age of TailTail: "
echo $(($TAILTAIL*100/$num)).$(( ( ($TAILTAIL*100*100)/$num ) % 100 ))

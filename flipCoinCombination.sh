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






HEADHEADHEAD=0
HEADHEADTAIL=0
HEADTAILTAIL=0
HEADTAILHEAD=0
TAILTAILHEAD=0
TAILHEADHEAD=0
TAILHEADTAIL=0
TAILTAILTAIL=0

declare -A dict2

count=0

while [ $count -ne $num ]
do
   flip1=$((RANDOM%2))
   flip2=$((RANDOM%2))
	flip3=$((RANDOM%2))

   if [ 1 -eq $flip1 -a 1 -eq $flip2 -a 1 -eq $filp3 ]
   then
      ((HEADHEADHEAD++))
      dict2[$count]="HHH"
   elif [ 1 -eq $flip1 -a 1 -eq $flip2 -a 0 -eq $flip3 ]
   then
      ((HEADHEADTAIL++))
      dict2[$count]="HHT"
   elif [ 1 -eq $flip1 -a 0 -eq $flip2 -a 1 -eq $flip3 ]
   then
      ((HEADTAILHEAD++))
      dict2[$count]="HTH"
   elif [ 1 -eq $flip1 -a 0 -eq $flip2 -a 0 -eq $flip3 ]
   then
		((HEADTAILTAIL++))
      dict2[$count]="HTT"
	elif [ 0 -eq $flip1 -a 1 -eq $flip2 -a 1 -eq $flip3 ]
	then
		((TAILHEADHEAD++))
		dict2[$count]="THH"
	elif [ 0 -eq $flip1 -a 0 -eq $flip2 -a 1 -eq $flip3 ]
	then
		((TAILTAILHEAD++))
		dict2[$count]="TTH"
	elif [ 0 -eq $flip1 -a 1 -eq $flip2 -a 0 -eq $flip3 ]
	then
		((TAILHEADTAIL++))
		dict2[$count]="THT"
	else
		((TAILTAILTAIL))
		dict2[$count]="TTT"
   fi

   count=$(($count+1))

done

echo ${dict2[@]}


echo "%age of HeadHeadHead: "
echo $(($HEADHEADHEAD*100/$num)).$(( ( ($HEADHEADHEAD*100*100)/$num ) % 100 ))
echo "%age of HeadHeadTail: "
echo $(($HEADHEADTAIL*100/$num)).$(( ( ($HEADHEADTAIL*100*100)/$num ) % 100 ))
echo "%age of HeadTailHead: "
echo $(($HEADTAILHEAD*100/$num)).$(( ( ($HEADTAILHEAD*100*100)/$num ) % 100 ))
echo "%age of HeadTailTail: "
echo $(($HEADTAILTAIL*100/$num)).$(( ( ($HEADTAILTAIL*100*100)/$num ) % 100 ))

echo "%age of TailHeadHead: "
echo $(($TAILHEADHEAD*100/$num)).$(( ( ($TAILHEADHEAD*100*100)/$num ) % 100 ))
echo "%age of TailHeadTail: "
echo $(($TAILHEADTAIL*100/$num)).$(( ( ($TAILHEADTAIL*100*100)/$num ) % 100 ))
echo "%age of TailTailHead: "
echo $(($TAILTAILHEAD*100/$num)).$(( ( ($TAILTAILHEAD*100*100)/$num ) % 100 ))
echo "%age of TailTailTail: "
echo $(($TAILTAILTAIL*100/$num)).$(( ( ($TAILTAILTAIL*100*100)/$num ) % 100 ))



#!/bin/bash -x

flip=$((RANDOM%2))
HEAD=1

if [ $HEAD -eq $flip ]
then
	echo HEAD
else
	echo TAIL
fi

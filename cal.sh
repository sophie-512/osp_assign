#!/bin/bash

if [ $# -ne 1 ]; then
	echo "...none operator parameter...."
  	PS3='select menu : '
	select parameter in "add" "sub" "div" "mul"
	do
  	 break  
	done
else parameter="$1"
fi

echo
num=(`cat num1.txt` `cat num2.txt`)
echo "num1 : " ${num[0]}
echo "num2 : " ${num[1]}
echo "op : " $parameter

case $parameter in
  "add") let result=`expr ${num[0]} + ${num[1]}` 
     ;;
  "sub") let result=`expr ${num[0]} - ${num[1]}`
     ;;
  "div") let result=`expr ${num[0]} / ${num[1]}`
     ;;
  "mul") let result=`expr ${num[0]} \* ${num[1]}`
     ;;
esac
echo "result : " $result

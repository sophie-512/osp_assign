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
num1=`cat num1.txt`
echo "num1 : " $num1
num2=`cat num2.txt`
echo "num2 : " $num2
echo "op : " $parameter

case $parameter in
  "add") let result=`expr $num1 + $num2` 
     ;;
  "sub") let result=`expr $num1 - $num2`
     ;;
  "div") let result=`expr $num1 / $num2`
     ;;
  "mul") let result=`expr $num1 \* $num2`
     ;;
esac
echo "result : " $result

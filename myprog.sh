#!/bin/bash
mkdir temp
echo "...create temp directory..."
cp num1.txt num2.txt cal.sh temp/
echo "...copy files to temp directory..."
PS3='select menu : '
select parameter in "add" "sub" "div" "mul"
do
  echo "...$parameter selected..."
  break  
done
echo "...run calculater..."
./cal.sh $parameter

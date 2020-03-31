#!/bin/bash -x

echo "Enter three values :"

read -p "Enter the value of a :" Number1
read -p "Enter the value of b :" Number2
read -p "Enter the value of c :" Number3

declare -a ResultantArray

Result=$(($Number1+$Number2*$Number3))
ResultantArray[exp1]=$Result;

Result2=$(($Number1*$Number2+$Number3))
ResultantArray[exp2]=$Result2;

Result3=$(($Number3+$Number1/$Number2))
ResultantArray[exp3]=$Result3;

Result4=$(($Number1%$Number2+$Number3))
ResultantArray[exp4]=$Result4;

echo "${!ResultantArray[@]}"
echo "${ResultantArray[@]}"

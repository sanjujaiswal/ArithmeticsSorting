#!/bin/bash -x

echo "Enter three values :"

read -p "Enter the value of a :" Number1
read -p "Enter the value of b :" Number2
read -p "Enter the value of c :" Number3

Result=$(($Number1+$Number2*$Number3))
echo "Result of a+b*c is :$Result"

Result2=$(($Number1*$Number2+$Number3))
echo "Result of a*b+c is :$Result2"

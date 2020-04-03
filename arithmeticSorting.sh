#!/bin/bash -x
#Contant declaration
LIMIT=4;
#Variables declaration
temp=0;
declare -A array

#Function for ascending
function ascendingSort(){

for (( i=1;i<=$LIMIT;i++ ))
do
	for (( j=1;j<=$LIMIT;j++ ))
	do
		if [ ${array[$i]} -lt ${array[$j]} ]
		then
		temp=${array[$i]};
		array[$i]=${array[$j]};
		array[$j]=$temp;
		fi
		done
	done
}

#Function for descending sort
function descendingSort(){

for (( i=1;i<=$LIMIT;i++ ))
do
	for (( j=1;j<=$LIMIT;j++ ))
	do
		if [ ${array[$i]} -gt ${array[$j]} ]
		then
		temp=${array[$i]};
		array[$i]=${array[$j]};
		array[$j]=$temp;
		fi
		done
	done
}

#Taking three inputs from user
read -p "Enter the value of a :" Number1
read -p "Enter the value of b :" Number2
read -p "Enter the value of c :" Number3

declare -A ResultantArray

#function to calculate expression
function computeExpression(){

ResultantArray[exp1]=$(( $Number1 + $Number2 * $Number3));
ResultantArray[exp2]=$(($Number1*$Number2+$Number3));
ResultantArray[exp3]=$(($Number3+$Number1/$Number2));
ResultantArray[exp4]=$(($Number1%$Number2+$Number3));


for (( i=1;i<=$LIMIT;i++ ))
do
	eval array[$i]=${ResultantArray[exp$i]};
done
}

# Function calling
computeExpression
ascendingSort
echo -e "Ascending order :${array[@]}"
descendingSort
echo "Descending order :${array[@]}"

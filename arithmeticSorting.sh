#!/bin/bash -x

#Function for ascending

function ascendingSort(){
   for (( i=1;i<=4;i++ ))
   do
      for (( j=1;j<=4;j++ ))
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
   for (( i=1;i<=4;i++ ))
   do
      for (( j=1;j<=4;j++ ))
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

declare -a ResultantArray

ResultantArray[exp1]=$(( $Number1 + $Number2 * $Number3));
ResultantArray[exp2]=$(($Number1*$Number2+$Number3));
ResultantArray[exp3]=$(($Number3+$Number1/$Number2));
ResultantArray[exp4]=$(($Number1%$Number2+$Number3));


for (( i=1;i<=4;i++ ))
do

	eval array[$i]=${ResultantArray[exp$i]};

done

# Function calling

ascendingSort
echo "{array[@]}"

descendingSort
echo "${array[@]}"

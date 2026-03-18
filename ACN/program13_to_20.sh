#!/bin/bash

############################
# Program 13 - Read Grades from File
############################
INPUT_FILE="grades.txt"

if [[ -f "$INPUT_FILE" ]]; then
    declare -A grades

    while read n
    do
        name=$(echo "$n" | cut -d ',' -f 1)
        grade=$(echo "$n" | cut -d ',' -f 2)
        grades["$name"]=$grade
    done < "$INPUT_FILE"

    echo "Program 13 Output:"
    for name in "${!grades[@]}"
    do
        echo "$name: ${grades[$name]}"
    done
    echo
fi


############################
# Program 14 - Smallest & Largest in Array
############################
echo "Program 14"
echo "Enter numbers(use space) : "
read -a arr

smallest=${arr[0]}
largest=${arr[0]}

for num in "${arr[@]}"
do 
  if [ $num -lt $smallest ]; then
       smallest=$num
  fi
  if [ $num -gt $largest ]; then
       largest=$num
  fi
done

echo "Smallest number: $smallest"
echo "Largest number : $largest"
echo


############################
# Program 15 - Smallest Digit in Number
############################
echo "Program 15"
echo "Enter a number "
read num

smallest=9

while [ $num -gt 0 ]
do
  digit=$((num % 10))

  if [ $digit -lt $smallest ]; then
    smallest=$digit
  fi

  num=$((num / 10))
done

echo "Smallest digit : $smallest"
echo


############################
# Program 16 - Sum (50–100 divisible by 3 not 5)
############################
echo "Program 16"

sum=0

for ((i=50; i<=100; i++))
do
  if (( i % 3 == 0 && i % 5 != 0 ))
  then
    sum=$((sum + i))
  fi
done

echo "Sum = $sum"
echo


############################
# Program 17 - Second Highest Number
############################
echo "Program 17"
echo "Enter numbers (use space ) : "
read -a arr

largest=${arr[0]}
second=${arr[0]}

for num in "${arr[@]}"
do 
  if [ $num -gt $largest ]; then
     second=$largest
     largest=$num
  elif [ $num -gt $second ] && [ $num -ne $largest ]; then
     second=$num
  fi
done

echo "Second highest number : $second"
echo


############################
# Program 18 - Sum of Digits (Function)
############################
echo "Program 18"

sum_of_digits() {
    num=$1
    sum=0

    while [ $num -gt 0 ]
    do
        digit=$((num % 10))
        sum=$((sum + digit))
        num=$((num / 10))
    done

    echo $sum
}

echo "Enter a number "
read number

result=$(sum_of_digits $number)
echo "Sum of digits = $result"
echo


############################
# Program 19 - Reverse Number
############################
echo "Program 19"

reverse_number(){
    num=$1
    rev=0

    while [ $num -gt 0 ]
    do 
      digit=$((num % 10))
      rev=$((rev * 10 + digit))
      num=$((num / 10))
    done
  
    echo $rev
}

echo "Enter a number "
read number

result=$(reverse_number $number)
echo "Reversed number = $result"
echo


############################
# Program 20 - Factorial
############################
echo "Program 20"

echo "Enter a number "
read num

fact=1

for((i=1;i<=num;i++))
do
  fact=$((fact * i))
done

echo "Factorial = $fact"

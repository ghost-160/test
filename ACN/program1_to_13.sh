#!/bin/bash

# =====================================================
# 1. Write a shell script to check whether a number is 
#    Odd or Even
# =====================================================

echo "--------------- 1. Odd or Even ---------------"
read -p "Enter a number: " num
if (( num % 2 == 0 ))
then
    echo "Even Number"
else
    echo "Odd Number"
fi


# =====================================================
# 2. Write a shell script to check whether a year is 
#    Leap Year or Not
# =====================================================

echo "--------------- 2. Leap Year ---------------"
read -p "Enter year: " year
if (( (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 ))
then
    echo "Leap Year"
else
    echo "Not a Leap Year"
fi


# =====================================================
# 3. Write a shell script to find Area and 
#    Circumference of a Circle
# =====================================================

echo "--------------- 3. Area & Circumference ---------------"
read -p "Enter radius: " r
area=$(echo "3.14 * $r * $r" | bc -l)
circum=$(echo "2 * 3.14 * $r" | bc -l)
echo "Area = $area"
echo "Circumference = $circum"


# =====================================================
# 4. Write a shell script to check whether a number 
#    and its reverse are same (Number Palindrome)
# =====================================================

echo "--------------- 4. Number Palindrome ---------------"
read -p "Enter number: " n
temp=$n
rev=0
while (( temp > 0 ))
do
    rem=$(( temp % 10 ))
    rev=$(( rev * 10 + rem ))
    temp=$(( temp / 10 ))
done
if (( n == rev ))
then
    echo "Number is Palindrome"
else
    echo "Number is Not Palindrome"
fi


# =====================================================
# 5. Write a shell script to check whether a string 
#    is Palindrome
# =====================================================

echo "--------------- 5. String Palindrome ---------------"
read -p "Enter string: " str
revstr=$(echo "$str" | rev)
if [ "$str" = "$revstr" ]
then
    echo "String is Palindrome"
else
    echo "String is Not Palindrome"
fi


# =====================================================
# 6. Write a shell script to find sum of even and 
#    odd numbers from 1 to n
# =====================================================

echo "--------------- 6. Sum of Even & Odd (1 to n) ---------------"
read -p "Enter limit: " limit
even=0
odd=0
for (( i=1; i<=limit; i++ ))
do
    if (( i % 2 == 0 ))
    then
        even=$(( even + i ))
    else
        odd=$(( odd + i ))
    fi
done
echo "Sum of Even numbers = $even"
echo "Sum of Odd numbers = $odd"


# =====================================================
# 7. Write a shell script to find the roots of a 
#    Quadratic Equation
# =====================================================

echo "--------------- 7. Roots of Quadratic Equation ---------------"
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c
d=$(( b*b - 4*a*c ))
if (( d > 0 ))
then
    root1=$(echo "(-$b + sqrt($d)) / (2*$a)" | bc -l)
    root2=$(echo "(-$b - sqrt($d)) / (2*$a)" | bc -l)
    echo "Roots are $root1 and $root2"
elif (( d == 0 ))
then
    root=$(echo "-$b / (2*$a)" | bc -l)
    echo "Equal Roots = $root"
else
    echo "Imaginary Roots"
fi


# =====================================================
# 8. Write a shell script to check whether a number 
#    is Armstrong or Not
# =====================================================

echo "--------------- 8. Armstrong Number ---------------"
read -p "Enter number: " num
temp=$num
sum=0
digits=${#num}
while (( temp > 0 ))
do
    rem=$(( temp % 10 ))
    power=$(echo "$rem ^ $digits" | bc)
    sum=$(( sum + power ))
    temp=$(( temp / 10 ))
done
if (( sum == num ))
then
    echo "Armstrong Number"
else
    echo "Not an Armstrong Number"
fi


# =====================================================
# 9. Write a shell script to check whether a number 
#    is Prime or Not
# =====================================================

echo "--------------- 9. Prime Number ---------------"
read -p "Enter number: " p
flag=0
for (( i=2; i<=p/2; i++ ))
do
    if (( p % i == 0 ))
    then
        flag=1
        break
    fi
done
if (( p <= 1 ))
then
    echo "Not Prime"
elif (( flag == 0 ))
then
    echo "Prime Number"
else
    echo "Not Prime"
fi


# =====================================================
# 10. Write a shell script to generate Prime Numbers 
#     between 1 and 100
# =====================================================

echo "--------------- 10. Prime Numbers between 1 and 100 ---------------"
for (( num=2; num<=100; num++ ))
do
    flag=0
    for (( i=2; i<=num/2; i++ ))
    do
        if (( num % i == 0 ))
        then
            flag=1
            break
        fi
    done
    if (( flag == 0 ))
    then
        echo $num
    fi
done


#!/bin/bash

echo "=================================="
echo "      BASIC SHELL PROGRAMS       "
echo "=================================="

# =====================================================
# 11. Sum of Squares of Individual Digits
# =====================================================

echo "----------- 1. Sum of Squares -----------"
echo "Enter a number:"
read num

sum=0
temp=$num

while [ $temp -gt 0 ]
do
    digit=$((temp % 10))
    sum=$((sum + digit * digit))
    temp=$((temp / 10))
done

echo "Sum of squares of digits = $sum"
echo

# =====================================================
# 12. Count Number of Vowels
# =====================================================

echo "----------- 2. Count Vowels -----------"
echo "Enter a line of text:"
read line

count=$(echo "$line" | grep -o -i "[aeiou]" | wc -l)

echo "Number of vowels = $count"
echo

# =====================================================
# 13. Display Student Grade
# =====================================================

echo "----------- 3. Student Grade -----------"
echo "Enter student marks:"
read marks

if [ $marks -ge 90 ]
then
    grade="A"
elif [ $marks -ge 75 ]
then
    grade="B"
elif [ $marks -ge 60 ]
then
    grade="C"
elif [ $marks -ge 50 ]
then
    grade="D"
else
    grade="Fail"
fi

echo "Grade = $grade"
echo
echo "=========== END OF PROGRAMS ==========="

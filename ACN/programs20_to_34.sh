#!/bin/bash

# Program 20: Generate Fibonacci Series
echo "Program 20: Fibonacci Series"
echo "Enter the number of terms:"
read n
a=0
b=1
echo "Fibonacci Series up to $n terms:"
for (( i=0; i<n; i++ )); do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
echo

# Program 21: Compare Two Files and Delete the Second if Identical
echo "Program 21: Compare Two Files"
echo "Enter the names of two files:"
read file1 file2
if cmp -s "$file1" "$file2"; then
    echo "Files are identical. Deleting $file2"
    rm "$file2"
else
    echo "Files are different."
fi
echo

# Program 22: List Files in the Current Directory
echo "Program 22: List Files in Current Directory"
echo "Files in the current directory:"
ls
echo

# Program 23: Display Current Directory (pwd), Date, and Users Logged In
echo "Program 23: Current Directory, Date, and Users Logged In"
echo "Current Directory: $(pwd)"
echo "Current Date: $(date)"
echo "Logged-in Users: $(who)"
echo

# Program 24: Check and Add Executable Permission to Files in the Current Directory
echo "Program 24: Add Executable Permission"
for file in *; do
    if [ -f "$file" ]; then
        if [ ! -x "$file" ]; then
            chmod +x "$file"
            echo "Made $file executable."
        else
            echo "$file already has executable permission."
        fi
    fi
done
echo

# Program 25: Generate Combinations of 1, 2, 3
echo "Program 25: Generate Combinations of 1, 2, 3"
for i in 1 2 3; do
    for j in 1 2 3; do
        for k in 1 2 3; do
            echo "$i$j$k"
        done
    done
done
echo

# Program 26: Create a Number Series
echo "Program 26: Number Series"
echo "Enter the length of the number series:"
read n
for (( i=1; i<=n; i++ )); do
    echo -n "$i "
done
echo

# Program 27: Create Pascal’s Triangle
echo "Program 27: Pascal’s Triangle"
echo "Enter number of rows for Pascal's Triangle:"
read n
factorial() {
    local f=1
    for (( i=1; i<=$1; i++ )); do
        (( f *= i ))
    done
    echo $f
}
combination() {
    local num=$1
    local r=$2
    echo $(( $(factorial $num) / ( $(factorial $r) * $(factorial $((num - r))) ) ))
}
for (( i=0; i<n; i++ )); do
    for (( j=0; j<=i; j++ )); do
        printf "%d " $(combination $i $j)
    done
    echo
done
echo

# Program 28: Decimal to Binary Conversion
echo "Program 28: Decimal to Binary Conversion"
echo "Enter a decimal number:"
read dec
bin=$(echo "obase=2;$dec" | bc)
echo "Binary equivalent of $dec is: $bin"
echo

# Program 29: Check if a String is Palindrome
echo "Program 29: Palindrome Check"
echo "Enter a string:"
read str
rev_str=$(echo "$str" | rev)
if [ "$str" == "$rev_str" ]; then
    echo "$str is a palindrome."
else
    echo "$str is not a palindrome."
fi
echo

# Program 30: Find Unique Words in a File and Count Occurrences
echo "Program 30: Unique Words in File"
echo "Enter file name:"
read file
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi
echo "Unique words and their occurrences in $file:"
tr -s '[:space:]' '\n' < "$file" | sort | uniq -c | sort -nr
echo

# Program 31: Count Occurrences of "Linux" in All .txt Files
echo "Program 31: Count Occurrences of 'Linux' in .txt Files"
count=$(grep -rohi "Linux" --include="*.txt" . | wc -l)
echo "Total count of the word 'Linux' in .txt files: $count"
echo

# Program 32: Validate Password Strength
echo "Program 32: Password Strength Validation"
echo "Enter your password:"
read -s password
if [[ ${#password} -lt 8 ]]; then
    echo "Password must be at least 8 characters long."
elif [[ ! "$password" =~ [A-Z] ]]; then
    echo "Password must contain at least one uppercase letter."
elif [[ ! "$password" =~ [a-z] ]]; then
    echo "Password must contain at least one lowercase letter."
elif [[ ! "$password" =~ [0-9] ]]; then
    echo "Password must contain at least one digit."
elif [[ ! "$password" =~ [[:punct:]] ]]; then
    echo "Password must contain at least one special character."
else
    echo "Password is strong."
fi
echo

# Program 33: Count Files and Subdirectories in a Specified Directory
echo "Program 33: Count Files and Subdirectories"
echo "Enter directory path:"
read dir
if [ ! -d "$dir" ]; then
    echo "Directory does not exist."
    exit 1
fi
files=$(find "$dir" -maxdepth 1 -type f | wc -l)
dirs=$(find "$dir" -maxdepth 1 -type d | wc -l)
dirs=$((dirs - 1))
echo "Number of files: $files"
echo "Number of subdirectories: $dirs"
echo

# Program 34: Reverse List of Strings and Reverse Each String
echo "Program 34: Reverse List and Each String"
echo "Enter a list of strings (space-separated):"
read -a strings
for (( i=${#strings[@]}-1; i>=0; i-- )); do
    reversed=$(echo "${strings[$i]}" | rev)
    echo -n "$reversed "
done
echo

#prints only the positive numbers from the list
print("TASK A ")
numbers=input("Enter a list of numbers ").split(',')
numbers=[int(n) for n in numbers]
positive=[int (n) for n in numbers if n>0 ]
print("Positive numbers ",positive)
#squre of N numbers
print("TASK B ")
sq=input("Enter numbers to be squared ").split(',')
sq=[int(n) for n in sq]
sqr=[n**2 for n in sq]
print("Squares ",sqr)
#list of vowels from a word
print("TASK C ")
word= input("Enter a word ")
vowel=[ch for ch in word if ch.lower() in 'aeiou']
print("The vowels are ",vowel)
#to get the ordinal values
word1=input("Enter a word ")
ordinary_values=[ord(ch) for ch in word1]
print("The ordinary values are ",ordinary_values)

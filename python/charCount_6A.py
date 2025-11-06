#program for counting characters
strg=input("Enter a string :")
word={}
for char  in strg :
    if char in word:
        word[char]+=1
    else :
        word[char]=1
print("Character frequency :")
for char, count in word.items():
    print(f"{char}:{count}")

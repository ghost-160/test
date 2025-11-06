#returnig the longest word
list=input("Enter a list of words separated by space :").split(" ")
longest_len=0
for word in list :
    if len(word)>longest_len:
        longest_len=len(word)
        long_word=word
print("The longest word is ",long_word)
print("The length of the word is ",longest_len)

#adding ing to a word if it ends with ing and if its ends with any other adds ly
str=input("Enter a string ")
if str.endswith("ing"):
    str=str +"ly"
else :
    str=str + "ing"
print("Modified string :",str)

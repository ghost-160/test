def compare(s1,s2,n):
    count=0
    for i in range(0, n):
        if s1[i]==s2[i]:
            count+=1
    if count==n:
            return "true"
    else:
            return "false"
    return None


s1=input("Enter string1: ")
s2=input("Enter String2 : ")
n=int(input("Enter the number: "))
print("The first ",n,"characters of both strings are the same :",compare(s1,s2,n))
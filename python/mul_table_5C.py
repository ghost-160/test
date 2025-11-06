#program to print the multiplication table of n,where n is entered by the user

n=int(input("Enter the number for the multiplication table : "))
limit=int(input("Enter the limit for the multiplication table : "))
for i in range(1,limit+1) :
    print(n,"x",i,"=",n*i)

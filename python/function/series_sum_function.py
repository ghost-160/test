#program to find  sum of the series 1/1!+4/2!+27/3!+.....
def fact(n):
    if n==1:
        return 1
    else:
        return n*fact(n-1)
n =int(input("Enter the number of terms : "))
result=0
for i in range(1,n+1):
    f=fact(i)
    result+=pow(i,i)/f
print("Sum of series is ",result)
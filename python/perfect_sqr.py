#a list of four digit number in a given range with all their digits even and the number is a perfect square

start_range= int(input("Enter the starting range (4 digits min) "))
end_range= int(input("Enter the ending range (4 digits max) "))
evendigit=[]
for num in range(start_range,end_range + 1) :
    if all(int(digit) % 2 ==0 for digit in str(num)) :
        sqrt=int(num **0.5)
        if sqrt*sqrt==num :
            evendigit.append(num)
if evendigit != [] :
    print("Numbers with all even digits and are perfect squares :")
    print(evendigit)
else:
    print("There are no numbers within the given range ")

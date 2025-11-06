from Armstrong import armstrong_number
number=int(input("Enter a number to check if its an armstrong number "))
if armstrong_number(number):
    print(f"{number} is an armstrong number ")
else:
    print(f"{number} is not an armstrong number ")

numbers=input("Enter a  set of numbers ").split(',')
numbers=[int (n) for n in  numbers]
result= [n if n <=100 else "Its over 100" for n in numbers]
print("New list of numbers ",result)

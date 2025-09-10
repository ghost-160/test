s = input("Enter a string ")
first = s[0]
result = first + s[1: ].replace(first,"$")
print("result", result)

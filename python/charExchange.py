#replaceing the last character with the first character
s = input("Enter a string to replace char between first and last ")
if len(s) > 1:
    result = s[-1] + s[1:-1] + s[0]
else:
    result = s
print("Result :", result)

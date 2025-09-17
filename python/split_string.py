colors=input("Enter a number of colors ").split(',')
colors=[c.strip() for c in colors]
print("First color ",colors[0])
print("Last color ",colors[-1])

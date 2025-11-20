class Rectangle:
 def area(self, length, breadth):
 return length * breadth
 def perimeter(self, length, breadth):
 return 2 * (length + breadth)
 def compare_area(self, area1, area2):
 if area1 > area2:
 return "Rectangle 1 has a greater area."
 elif area1 < area2:
 return "Rectangle 2 has a greater area."
 else:
 return "Both rectangles have the same area."
# Taking input
length1 = float(input("Enter length of Rectangle 1: "))
breadth1 = float(input("Enter breadth of Rectangle 1: "))
length2 = float(input("Enter length of Rectangle 2: "))
breadth2 = float(input("Enter breadth of Rectangle 2: "))
# Creating object
rectangle = Rectangle()
# Calculations
area_rect1 = rectangle.area(length1, breadth1)
area_rect2 = rectangle.area(length2, breadth2)
perimeter_rect1 = rectangle.perimeter(length1, breadth1)
perimeter_rect2 = rectangle.perimeter(length2, breadth2)
# Output
print("\nRectangle 1:")
print("Area:", area_rect1)
print("Perimeter:", perimeter_rect1)
print("\nRectangle 2:")
print("Area:", area_rect2)
print("Perimeter:", perimeter_rect2)
# Comparison
area_comparison = rectangle.compare_area(area_rect1, area_rect2)
print("\n" + area_comparison)

import Graphics
from Graphics import circle,rectangle
from Graphics.threeDGraphics import cuboid,sphere
from Graphics.circle import *

rad1=float(input("Enter the radius of the circle :"))
print("Area of the circle is :",circle.area_circle(rad1))
print("Perimeter of the circle is :",circle.perimeter_circle(rad1))

len1=float(input("Enter the length of the rectangle : "))
breadth1=float(input("Enter the breadth of the rectangle : "))
print("Area of rectangle is :",rectangle.area_rec(len1,breadth1))
print("Perimeter of rectangle is :",rectangle.perimeter_rec(len1,breadth1))

len2=float(input("Enter the length of the cuboid : "))
breadth2=float(input("Enter the breadth of the cuboid : "))
height=float(input("Enter the height of the cuboid : "))
print("Area of cuboid is :",cuboid.area_cuboid(len2,breadth2,height))
print("Perimeter of cuboid is :",cuboid.perimeter_cuboid(len2,breadth2,height))

rad2=float(input("Enter the radius of the sphere :"))
print("Area of the sphere is :",sphere.area_sphere(rad2))
print("Perimeter of the sphere is :",sphere.perimeter_sphere(rad2))



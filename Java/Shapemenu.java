
import java.util.Scanner;

interface Shape{
    void area();
    void perimeter();
}

class Circle implements Shape{
    double radius;

    public Circle(double  r) {
        radius=r;
    }
    public void area(){
        double area=Math.PI*radius*radius;
        System.out.println("Area of circle : "+area);
    }
    public void perimeter(){
        double perimeter=2*Math.PI*radius;
        System.out.println("Perimeter of circle : "+perimeter);
    }
}

class Rectangle implements Shape {
    double length,breadth;

    public Rectangle(double l,double b) {
        length=l;
        breadth=b;
    }
    public void area(){
        double area=length*breadth;
        System.out.println("Area of Rectangle : "+area);
    }
    public void perimeter(){
        double perimeter=2*(length+breadth);
        System.out.println("Perimeter of rectangle : "+perimeter);
    }
}

public class Shapemenu {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int choice;

        do {
            System.out.println("\n Pick one \n");
            System.out.println("1.circle");
            System.out.println("2.Rectangle");
            System.out.println("3.Exit");
            System.out.println("Enter you choice : ");
            choice=sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("Enter radius : ");
                    double r=sc.nextDouble();
                    Circle c=new Circle(r);
                    c.area();
                    c.perimeter();
                    break;
                case 2:
                    System.out.println("Enter length : ");
                    double l=sc.nextDouble();
                    System.out.println("Enter breadth : ");
                    double b=sc.nextDouble();

                    Rectangle rec=new Rectangle(l, b);
                    rec.area();
                    rec.perimeter();
                    break;
                case 3:
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid choice");
            }
        } while (choice !=3);
        sc.close();
    }
    
}

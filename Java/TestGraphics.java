import graphics.*;
import java.util.Scanner;
public class TestGraphics{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        System.out.println("....MENU....");
        System.out.println("1.Circle");
        System.out.println("2.Rectangle");
        System.out.println("3.Triangle");
        System.out.println("4.Square");

        System.out.println("Enter choice : ");
        int choice =sc.nextInt();

        switch (choice) {
            case 1:
                System.out.println("Enter radius : ");
                double r=sc.nextDouble();
                Circle c=new Circle(r);
                System.out.println("Area of Circle : "+ c.area());
                break;
            case 2:
                System.out.println("Enter length and breadth : ");
                double l=sc.nextDouble();
                double b=sc.nextDouble();
                Rectangle rec=new Rectangle(l,b);
                System.out.println("Area of rectangle "+ rec.area());
                break;
            case 3:
                System.out.println("Enter base and height : ");
                double base=sc.nextDouble();
                double height=sc.nextDouble();
                Triangle t=new Triangle(base, height);
                System.out.println("Area of Triangle : "+t.area());
                break;
            case 4:
                System.out.println("Enter side : ");
                double s=sc.nextDouble();
                Square sq=new Square(s);
                System.out.println("Area of Square : "+sq.area());
                break;
            default:
                System.out.println("Invalid choice ");
        }
        sc.close();
    }
}

import java.util.Scanner;
class Shapearea{
    double area(double radius){
        return 3.14 *radius*radius;
    }
    double area(double length,double breadth){
        return  length*breadth;
    }
    double area(float base,float height){
        return 0.5*base*height;
    }
}
public class Areaprogram {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        Shapearea obj=new Shapearea();

        System.out.println("Enter radius : ");
        double r=sc.nextDouble();
        System.out.println("Area of circle : "+obj.area(r));

        System.out.println("Enter length and breadth : ");
        double l=sc.nextDouble();
        double b=sc.nextDouble();
        System.out.println("Area of rectangle : "+obj.area(l, b));

        System.out.println("Enter base and height : ");
        float base=sc.nextFloat();
        float height=sc.nextFloat();
        System.out.println("Area of Triangle : "+obj.area(base, height));
        sc.close();
    }
}

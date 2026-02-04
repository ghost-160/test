import java.util.Scanner;

public class Complex {
    double real;
    double img;

        public Complex(double r,double i) {
            real=r;
            img=i;
        }
    static Complex add(Complex c1,Complex c2)
    {
        return new Complex(c1.real+c2.real,c1.img+c2.img);
    }
    void display(){
        System.out.println(real+"+"+ img +" i");
    }
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the real part of the first complex number : ");
        double r1=sc.nextDouble();
        System.out.println("Enter the imaginary part of the first complex number :");
        double i1=sc.nextDouble();
        System.out.println("Enter the real part of the second complex number : ");
        double r2=sc.nextDouble();
        System.out.println("Enter the imaginary part of the second complex number :");
        double i2=sc.nextDouble();
        Complex c1=new Complex(r1, i1);
        Complex c2=new Complex(r2, i2);
        Complex sum=Complex.add(c1, c2);
        System.out.println("Sum = ");
        sum.display();
    }
    
}

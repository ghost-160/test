import arithmetic.*;
import java.util.Scanner;

public class TestArithmetic {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter first number : ");
        double a = sc.nextDouble();

        System.out.print("Enter second number : ");
        double b = sc.nextDouble();

        Add add = new Add();
        Subtract sub = new Subtract();
        Multiply mul = new Multiply();
        Divide div = new Divide();

        System.out.println("\nResults:");
        System.out.println("Addition : " + add.calculate(a, b));
        System.out.println("Subtraction : " + sub.calculate(a, b));
        System.out.println("Multiplication : " + mul.calculate(a, b));
        System.out.println("Division : " + div.calculate(a, b));

        sc.close();
    }
}

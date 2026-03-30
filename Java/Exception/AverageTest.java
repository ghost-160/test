package exception;

import java.util.*;

public class AverageTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n, num, sum = 0;

        System.out.print("Enter count: ");
        n = sc.nextInt();

        // Handle division by zero case
        if (n == 0) {
            System.out.println("Count cannot be zero!");
            return; // Exit if the count is zero
        }

        for (int i = 0; i < n; i++) {
            System.out.print("Enter number: ");
            num = sc.nextInt();

            try {
                if (num < 0)
                    throw new NegativeNumberException("Negative not allowed");

                sum += num;
            } catch (NegativeNumberException e) {
                System.out.println(e.getMessage());
                i--; // Decrease the counter to ask for the input again
            }
        }

        // Safely compute the average
        double average = (double) sum / n;
        System.out.println("Average: " + average);
    }
}

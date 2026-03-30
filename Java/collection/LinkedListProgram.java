package collection;

import java.util.Scanner;
import java.util.LinkedList;

public class LinkedListProgram {  // Renamed class to avoid conflict
    public static void main(String[] args) {
        // Use Integer (uppercase) instead of integer
        LinkedList<Integer> list = new LinkedList<>();
        Scanner sc = new Scanner(System.in);
        int choice;

        do { 
            System.out.println("--LINKED LIST ");
            System.out.println("1. Add element ");
            System.out.println("2. Display List ");
            System.out.println("3. Remove All elements ");
            System.out.println("4. Exit ");
            System.out.print("Enter choice: ");
            
            choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter element: ");
                    int val = sc.nextInt();
                    list.add(val);
                    break;
                case 2:
                    System.out.println("List: " + list);
                    break;
                case 3:
                    list.clear();
                    System.out.println("All elements removed.");
                    break;
                default:
                    System.out.println("Invalid choice.");
            }
        } while (choice != 4);

        sc.close();
    }
}

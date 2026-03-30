package collection;
import java.util.*;

class Stack<T> {
    ArrayList<T> list = new ArrayList<>();

    void push(T val) {
        list.add(val);
        System.out.println("Pushed: " + val);
    }

    void pop() {
        if (list.isEmpty()) {
            System.out.println("Stack is empty.");
        } else {
            System.out.println("Popped: " + list.remove(list.size() - 1));
        }
    }

    void display() {
        if (list.isEmpty()) {
            System.out.println("Stack is empty.");
        } else {
            System.out.println("STACK: " + list);
        }
    }
}

public class StackDemo {
    public static void main(String[] args) {
        // Use Integer (uppercase "I") instead of integer
        Stack<Integer> s = new Stack<>();
        Scanner sc = new Scanner(System.in);
        int choice, val;

        do {
            System.out.println("STACK");
            System.out.println("1. Push");
            System.out.println("2. Pop");
            System.out.println("3. Display");
            System.out.println("4. Exit");
            System.out.print("Enter choice: ");
            choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter value: ");
                    val = sc.nextInt();
                    s.push(val);
                    break;
                case 2:
                    s.pop();
                    break;
                case 3:
                    s.display();
                    break;
                case 4:
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid choice.");
            }
        } while (choice != 4);
        sc.close();
    }
}

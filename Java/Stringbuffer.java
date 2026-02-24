import java.util.Scanner;
public class Stringbuffer {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter a string : ");
        String str =sc.nextLine();

        StringBuffer sb=new StringBuffer(str);
        System.out.println("Capacity of String buffer "+sb.capacity());
        sb.reverse();
        String result= sb.toString().toUpperCase();

        System.out.println("Reversed & Uppercase : "+result);
        System.out.println("Enter another string : ");
        String str2=sc.nextLine();

        sb.reverse();
        sb.append(str2);

        System.out.println("After appending : "+sb);

        sc.close();
    }
}

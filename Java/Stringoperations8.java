import java.util.Scanner;
public class Stringoperations {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);


        System.out.println("Enter first String : ");
        String s1=sc.nextLine();

        System.out.println("Enter second string : ");
        String s2=sc.nextLine();
        
        System.out.println("Length of first string : "+ s1.length());
        System.out.println("2nd character : "+s1.charAt(1));
        System.out.println("4th character : "+s1.charAt(3));

        System.out.println("Substring from index 2 : "+ s1.substring(2));
        System.out.println("Substring (1,5) : "+s1.substring(1,5));
        System.out.println("Concatenation : "+s1.concat(s2));
        System.out.println("Lowercase : "+s1.toLowerCase());
        System.out.println("Uppercase : "+s1.toUpperCase());
        sc.close();
    }
}

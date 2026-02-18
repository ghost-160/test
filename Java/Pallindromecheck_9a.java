import java.util.Scanner;
public class Pallindromecheck {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        System.out.println("Enter a string : ");
        String s=sc.nextLine();

        String reversed="";

        for(int i=s.length()-1;i>=0;i--){
            reversed+=s.charAt(i);
        }
        if(s.equalsIgnoreCase(reversed)){
            System.out.println("The String is Palindrome");
        }
        else{
            System.out.println("The String is not Palindrome ");
        }
        sc.close();
    }
}

import java.util.Arrays;
import java.util.Scanner;

public class SortStrings {
public static void main(String[] args) {
    Scanner sc=new Scanner(System.in);
    System.out.println("Enter the number of strings :");
    int n=sc.nextInt();
    sc.nextLine();
    String arr[]=new String[n];
    System.out.println("Enter Strings :");
    for(int i=0;i<n;i++){
        arr[i]=sc.nextLine();
    }
    Arrays.sort(arr);
    System.out.println("Sorted Strings :");
    for(String S: arr){
        System.out.println(S);
    }
    }
}

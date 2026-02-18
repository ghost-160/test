import java.util.Arrays;
import java.util.Scanner;

public class Sortnames {
    public static void main(String[] args) {
        
        Scanner sc=new Scanner(System.in);

        System.out.println("Enter number of names : ");
        int n=sc.nextInt();
        sc.nextLine();

        String names[]=new String[n];

        System.out.println("Enter names : ");
        for(int i=0;i<n;i++){
            names[i]=sc.nextLine();
        }
        Arrays.sort(names);

        
        System.out.println("Names in Ascending order : ");
        for(String name: names){
            System.out.println(name);
        }
        sc.close();
    }
}

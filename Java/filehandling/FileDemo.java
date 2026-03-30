package filehandling;
import java.io.*;
import java.util.*;
public class FileDemo {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        try{
            System.out.println("Enter text to write : ");
            String data=sc.nextLine();
            FileWriter fw=new FileWriter("test.txt");
            fw.write(data);
            fw.close();
            System.out.println("\nReading from file : ");
            FileReader fr=new FileReader("test.txt");
            int ch;
            while((ch =fr.read())!=-1){
                System.out.println((char)ch);
            }
                fr.close();
            
        }catch(Exception e){
            System.out.println(e);
        }
        sc.close();
    }
}
